import sys
import pickle
import numpy as np


# argv[1] = name of the word file to load, part after drugbank_words_
# argv[2] = name of the word embeddings file to load
# argv[3] = names of the file with the words to keep
# argv[4] = 'boolean', true if you want to filter the reverse dictionary, false otherwise
def main(argv):
    log = open('filter.log', 'a')
    with open('drugbank_words_' + argv[1] + '_reverse_dictionary', 'rb') as fp:
        reverse_dictionary = pickle.load(fp)
    vocabulary_size = len(reverse_dictionary)
    log.write('\n' + argv[1] + ' reverse dictionary loaded\n')
    log.flush()
    with open(argv[3], 'rb') as fp:
        words = pickle.load(fp)
    log.write('drug names loaded\n')
    log.flush()
    final_embeddings = np.load(argv[2] + '.npy')
    log.write(argv[2] + ' loaded\n')
    log.flush()
    new_embeddings = np.empty_like(final_embeddings)
    if argv[4] == 'true':
        new_reverse_dictionary = {}
    new_index = 0
    for index in range(vocabulary_size):
        word = reverse_dictionary[index]
        if word in words:
            new_embeddings[new_index] = final_embeddings[index]
            if argv[4] == 'true':
                new_reverse_dictionary[new_index] = word
            new_index += 1
    new_embeddings.resize(new_index, final_embeddings.shape[1])
    log.write(argv[2] + ' filtered\n')
    log.flush()
    np.save(argv[2] + '_filter_' + argv[3], new_embeddings)
    log.write(argv[2] + '_filter_' + argv[3] + ' saved\n')
    log.flush()
    if argv[4] == 'true':
        with open('drugbank_words_' + argv[1] + '_reverse_dictionary_filter_' + argv[3], 'wb') as fp:
            pickle.dump(new_reverse_dictionary, fp)
        log.write('drugbank_words_' + argv[1] + '_reverse_dictionary_filter_' + argv[3] + ' saved \n')
        log.flush()


if __name__ == '__main__':
    main(sys.argv)

