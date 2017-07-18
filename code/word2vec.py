# Copyright 2015 The TensorFlow Authors. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ==============================================================================

from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import collections
import math
import random

import numpy as np
from six.moves import xrange  # pylint: disable=redefined-builtin
import tensorflow as tf

from sklearn.manifold import TSNE
import matplotlib as mpl

mpl.use('Agg')
import matplotlib.pyplot as plt
import sys
from itertools import compress
import pickle

data_index = 0


def generate_batch_skipgram(data, batch_size, num_skips, skip_window):
    '''
    Batch generator for skip-gram model.

    Parameters
    ----------
    data: list of index of words
    batch_size: number of words in each mini-batch
    num_skips: number of surrounding words on both direction (2: one word ahead and one word following)
    skip_window: number of words at both ends of a sentence to skip (1: skip the first and last word of a sentence)
    '''
    global data_index
    assert batch_size % num_skips == 0
    assert num_skips <= 2 * skip_window
    batch = np.ndarray(shape=(batch_size), dtype=np.int32)
    labels = np.ndarray(shape=(batch_size, 1), dtype=np.int32)
    span = 2 * skip_window + 1  # [ skip_window target skip_window ]
    buffer = collections.deque(maxlen=span)  # used for collecting data[data_index] in the sliding window
    for _ in range(span):
        buffer.append(data[data_index])
        data_index = (data_index + 1) % len(data)
    for i in range(batch_size // num_skips):
        target = skip_window  # target label at the center of the buffer
        targets_to_avoid = [skip_window]
        for j in range(num_skips):
            while target in targets_to_avoid:
                target = random.randint(0, span - 1)
            targets_to_avoid.append(target)
            batch[i * num_skips + j] = buffer[skip_window]
            labels[i * num_skips + j, 0] = buffer[target]
        buffer.append(data[data_index])
        data_index = (data_index + 1) % len(data)
    # Backtrack a little bit to avoid skipping words in the end of a batch
    data_index = (data_index + len(data) - span) % len(data)
    return batch, labels


def generate_batch_cbow(data, batch_size, num_skips, skip_window):
    '''
    Batch generator for CBOW (Continuous Bag of Words).
    batch should be a shape of (batch_size, num_skips)
    Parameters
    ----------
    data: list of index of words
    batch_size: number of words in each mini-batch
    num_skips: number of surrounding words on both direction (2: one word ahead and one word following)
    skip_window: number of words at both ends of a sentence to skip (1: skip the first and last word of a sentence)
    '''
    global data_index
    assert batch_size % num_skips == 0
    assert num_skips <= 2 * skip_window
    batch = np.ndarray(shape=(batch_size, num_skips), dtype=np.int32)
    labels = np.ndarray(shape=(batch_size, 1), dtype=np.int32)
    span = 2 * skip_window + 1  # [ skip_window target skip_window ]
    buffer = collections.deque(maxlen=span)  # used for collecting data[data_index] in the sliding window
    # collect the first window of words
    for _ in range(span):
        buffer.append(data[data_index])
        data_index = (data_index + 1) % len(data)
    # move the sliding window
    for i in range(batch_size):
        mask = [1] * span
        mask[skip_window] = 0
        batch[i, :] = list(compress(buffer, mask))  # all surrounding words
        labels[i, 0] = buffer[skip_window]  # the word at the center
        buffer.append(data[data_index])
        data_index = (data_index + 1) % len(data)
    # Backtrack a little bit to avoid skipping words in the end of a batch
    data_index = (data_index + len(data) - span) % len(data)
    return batch, labels


def build_training_model(architecture, vocabulary_size, batch_size, embedding_size, num_skips):
    # We pick a random validation set to sample nearest neighbors. Here we limit the
    # validation samples to the words that have a low numeric ID, which by
    # construction are also the most frequent.
    valid_size = 16  # Random set of words to evaluate similarity on.
    valid_window = 100  # Only pick dev samples in the head of the distribution.
    valid_examples = np.random.choice(valid_window, valid_size, replace=False)
    num_sampled = 64  # Number of negative examples to sample.
    graph = tf.Graph()
    with graph.as_default():
        # Input data.
        if architecture == 'skip-gram':
            train_inputs = tf.placeholder(tf.int32, shape=[batch_size])
        else:
            train_inputs = tf.placeholder(tf.int32, shape=[batch_size, num_skips])
        train_labels = tf.placeholder(tf.int32, shape=[batch_size, 1])
        valid_dataset = tf.constant(valid_examples, dtype=tf.int32)
        # Ops and variables pinned to the CPU because of missing GPU implementation
        with tf.device('/cpu:0'):
            # Variables.
            embeddings = tf.Variable(
                tf.random_uniform([vocabulary_size, embedding_size], -1.0, 1.0))
            # variables for the NCE loss
            nce_weights = tf.Variable(
                tf.truncated_normal([vocabulary_size, embedding_size],
                                    stddev=1.0 / math.sqrt(embedding_size)))
            nce_biases = tf.Variable(tf.zeros([vocabulary_size]))

            # Model.
            # Look up embeddings for inputs.
            if architecture == 'skip-gram':
                embed = tf.nn.embedding_lookup(embeddings, train_inputs)
            else:
                embed = tf.zeros([batch_size, embedding_size])
                for j in range(num_skips):
                    embed += tf.nn.embedding_lookup(embeddings, train_inputs[:, j])

        # Compute the average NCE loss for the batch.
        # tf.nce_loss automatically draws a new sample of the negative labels each
        # time we evaluate the loss.
        loss = tf.reduce_mean(
            tf.nn.nce_loss(weights=nce_weights,
                           biases=nce_biases,
                           labels=train_labels,
                           inputs=embed,
                           num_sampled=num_sampled,
                           num_classes=vocabulary_size))
        # Construct the SGD optimizer using a learning rate of 1.0.
        optimizer = tf.train.GradientDescentOptimizer(1.0).minimize(loss)
        # Compute the cosine similarity between minibatch examples and all embeddings.
        norm = tf.sqrt(tf.reduce_sum(tf.square(embeddings), 1, keep_dims=True))
        normalized_embeddings = embeddings / norm
        valid_embeddings = tf.nn.embedding_lookup(
            normalized_embeddings, valid_dataset)
        similarity = tf.matmul(
            valid_embeddings, normalized_embeddings, transpose_b=True)
        # Add variable initializer.
        init = tf.global_variables_initializer()
    return graph, init, train_inputs, train_labels, optimizer, loss, similarity, normalized_embeddings


def train(architecture, graph, data, init, train_inputs, train_labels, optimizer, loss, similarity, reverse_dictionary,
          normalized_embeddings, num_steps, batch_size, num_skips, skip_window):
    with tf.Session(graph=graph) as session:
        # We must initialize all variables before we use them.
        init.run()
        print("Initialized")
        average_loss = 0
        for step in xrange(num_steps):
            if architecture == 'skip-gram':
                batch_inputs, batch_labels = generate_batch_skipgram(data, batch_size, num_skips, skip_window)
            else:
                batch_inputs, batch_labels = generate_batch_cbow(data, batch_size, num_skips, skip_window)
            feed_dict = {train_inputs: batch_inputs, train_labels: batch_labels}
            # We perform one update step by evaluating the optimizer op (including it
            # in the list of returned values for session.run()
            _, loss_val = session.run([optimizer, loss], feed_dict=feed_dict)
            average_loss += loss_val
            if step % 2000 == 0:
                if step > 0:
                    average_loss /= 2000
                # The average loss is an estimate of the loss over the last 2000 batches.
                print("Average loss at step ", step, ": ", average_loss)
                average_loss = 0
                # Note that this is expensive (~20% slowdown if computed every 500 steps)
            #            if step % 10000 == 0:
            #                sim = similarity.eval()
            #                for i in xrange(valid_size):
            #                    valid_word = reverse_dictionary[valid_examples[i]]
            #                    top_k = 8  # number of nearest neighbors
            #                    nearest = (-sim[i, :]).argsort()[1:top_k + 1]
            #                    log_str = "Nearest to %s:" % valid_word
            #                    for k in xrange(top_k):
            #                        close_word = reverse_dictionary[nearest[k]]
            #                        log_str = "%s %s," % (log_str, close_word)
            #                    print(log_str)
        final_embeddings = normalized_embeddings.eval()
    return final_embeddings


def plot_with_labels(low_dim_embs, labels, filename='tsne.png'):
    assert low_dim_embs.shape[0] >= len(labels), "More labels than embeddings"
    plt.figure(figsize=(18, 18))  # in inches
    for i, label in enumerate(labels):
        x, y = low_dim_embs[i, :]
        plt.scatter(x, y)
        plt.annotate(label,
                     xy=(x, y),
                     xytext=(5, 2),
                     textcoords='offset points',
                     ha='right',
                     va='bottom')

    plt.savefig(filename)


def plot(reverse_dictionary, final_embeddings):
    tsne = TSNE(perplexity=30, n_components=2, init='pca', n_iter=5000)
    plot_only = 500
    low_dim_embs = tsne.fit_transform(final_embeddings[:plot_only, :])
    labels = [reverse_dictionary[i] for i in xrange(plot_only)]
    plot_with_labels(low_dim_embs, labels)
    return labels


# argv[1] = name of the word file to load, part after drugbank_words_
# argv[2] = batch size and embedding size 8, 16, 32, 64, 128, 256
# argv[3] = num_skips, 2, 4, 8
# argv[4] = skip_window, 1, 2, 4
# argv[5] = architecture, cbow or skip-gram
# argv[6] = number of steps, usually 100001
def main(argv):
    sys.stdout = open('word2vec.log', 'a')
    with open('drugbank_words_' + argv[1] + '_data', 'rb') as fp:
        data = pickle.load(fp)
    with open('drugbank_words_' + argv[1] + '_reverse_dictionary', 'rb') as fp:
        reverse_dictionary = pickle.load(fp)
    vocabulary_size = len(reverse_dictionary)
    print('\ndrugbank_words_' + argv[1] + ' data and reverse dictionary loaded')
    batch_size = int(argv[2])
    embedding_size = int(argv[2])  # Dimension of the embedding vector.
    num_skips = int(argv[3])  # How many times to reuse an input to generate a label. <= 2 * skip_window.
    skip_window = int(argv[4])  # How many words to consider left and right.
    architecture = argv[5]
    num_steps = int(argv[6])
    print('batch_size = ' + argv[2])
    print('embedding_size = ' + argv[2])
    print('num_skips = ' + argv[3])
    print('skip_window = ' + argv[4])
    print('architecture = ' + argv[5])
    print('num_steps = ' + argv[6])
    graph, init, train_inputs, train_labels, optimizer, loss, similarity, normalized_embeddings = build_training_model(
        architecture, vocabulary_size, batch_size, embedding_size, num_skips)
    final_embeddings = train(architecture, graph, data, init, train_inputs, train_labels, optimizer, loss, similarity,
                             reverse_dictionary, normalized_embeddings, num_steps, batch_size, num_skips, skip_window)
    np.save('final_embeddings_' + argv[1] + '_' + argv[5] + '_' + argv[2] + '_' + argv[3] + '_' + argv[4],
            final_embeddings)
    print('final_embeddings_' + argv[1] + '_' + argv[5] + '_' + argv[2] + '_' + argv[3] + '_' + argv[4] + ' saved')


if __name__ == '__main__':
    main(sys.argv)
