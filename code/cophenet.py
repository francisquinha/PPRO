import sys
import time
import numpy as np
from scipy.cluster.hierarchy import cophenet
from scipy.spatial.distance import pdist


def run_cophenet(X, Z):
    start = time.clock()
    c, coph_dists = cophenet(Z, pdist(X))
    end = time.clock()
    elapsed = end - start
    return c, coph_dists, elapsed


# argv[1] = name of the word file to load
# argv[2] = linkage model, for example, ward
def main(argv):
    log = open('cophenet.log', 'a')
    X = np.load(argv[1] + '.npy')
    log.write('\n' + argv[1] + ' loaded\n')
    log.flush()
    Z = np.load(argv[1] + '_linkage_' + argv[2] + '.npy')
    log.write(argv[1] + '_linkage_' + argv[2] + ' loaded\n')
    log.flush()
    c, coph_dists, elapsed = run_cophenet(X, Z)
    log.write('cophenet ' + str(c) + '\n')
    log.write('cophenet time ' + '%.2f' % elapsed)
    log.write('\n')
    log.flush()
    # np.save(argv[1] + '_coph_dists', coph_dists)
    # log.write('\n' + 'cophenet saved\n')
   

if __name__ == '__main__':
    main(sys.argv)

