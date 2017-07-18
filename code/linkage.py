import sys
import time
import numpy as np
from scipy.cluster.hierarchy import linkage


def run_linkage(X, method):
    start = time.clock()
    Z = linkage(X, method)
    end = time.clock()
    elapsed = end - start
    return Z, elapsed


# argv[1] = name of the word embeddings file to load
# argv[2] = linkage model, for example, ward
# argv[3] = size, optional argument to use only the embeddings up to the size
def main(argv):
    log = open('linkage.log', 'a')
    final_embeddings = np.load(argv[1] + '.npy')
    log.write('\n' + argv[1] + ' loaded\n')
    log.flush()
    if len(argv) < 4:
        log.write('embeddings size ' + str(final_embeddings.shape[0]) + '\n')
        log.flush()
        Z, elapsed = run_linkage(final_embeddings, argv[2])
    else:
        size = int(argv[3])
        X = final_embeddings[:size, :]
        log.write('embeddings size ' + str(X.shape[0]) + '\n')
        log.flush()
        Z, elapsed = run_linkage(X, argv[2])
    log.write('linkage ' + argv[2] + ' time ' + '%.2f' % elapsed)
    log.flush()
    if len(argv) < 4:
        np.save(argv[1] + '_linkage_' + argv[2], Z)
    else:
        np.save(argv[1] + '_linkage_' + argv[2] + '_' + argv[3], Z)
    log.write('\n' + 'linkage saved\n')


if __name__ == '__main__':
    main(sys.argv)
