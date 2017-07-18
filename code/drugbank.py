# coding=utf-8

# from nltk.corpus import stopwords
# from nltk.stem.snowball import SnowballStemmer
from lxml import etree
import re
import sys
import pickle
import collections


def replace_tag_hyphens(filename):
    with open(filename, 'r') as in_file:
        xmlstring = in_file.read()
    while True:
        xmlstring, n = re.subn(r'<(/?)(\w*)-(.*)>', r'<\1\2_\3>', xmlstring)
        if n == 0:
            break
    with open(filename, 'w') as out_file:
        out_file.write(xmlstring)


def only_right_groups(tree, groups_list):
    drugbank = tree.getroot()
    selected = 0
    total = 0
    for drug in drugbank:
        selected += 1
        total += 1
        for tag in drug:
            if tag.tag == '{http://www.drugbank.ca}groups':
                for group in tag:
                    if group.tag == '{http://www.drugbank.ca}group' and group.text not in groups_list:
                        drugbank.remove(drug)
                        selected -= 1
                        break
                break
    return tree, selected, total


def some_right_groups(tree, groups_list):
    drugbank = tree.getroot()
    selected = 0
    total = 0
    for drug in drugbank:
        remove = True
        selected += 1
        total += 1
        for tag in drug:
            if tag.tag == '{http://www.drugbank.ca}groups':
                for group in tag:
                    if group.tag == '{http://www.drugbank.ca}group' and group.text in groups_list:
                        remove = False
                        break
                if remove:
                    drugbank.remove(drug)
                    selected -= 1
                break
    return tree, selected, total


def relevant_tags_word2vec(tree):
    drugbank = tree.getroot()
    for drug in drugbank:
        for tag in drug:
            if tag.tag not in {
                '{http://www.drugbank.ca}description',
                '{http://www.drugbank.ca}indication',
                '{http://www.drugbank.ca}pharmacodynamics',
                '{http://www.drugbank.ca}mechanism-of-action',
                '{http://www.drugbank.ca}toxicity',
                '{http://www.drugbank.ca}metabolism',
                '{http://www.drugbank.ca}absorption',
                '{http://www.drugbank.ca}half-life',
                '{http://www.drugbank.ca}protein-binding',
                '{http://www.drugbank.ca}route-of-elimination',
                '{http://www.drugbank.ca}classification',
                '{http://www.drugbank.ca}affected-organisms',
                '{http://www.drugbank.ca}food-interactions',
                '{http://www.drugbank.ca}drug-interactions',
                '{http://www.drugbank.ca}reactions',
                '{http://www.drugbank.ca}snp-effects',
                '{http://www.drugbank.ca}snp-adverse-drug-reactions'
            }:
                drug.remove(tag)
    return tree


def relevant_tags_prolog(tree):
    drugbank = tree.getroot()
    for drug in drugbank:
        for tag in drug:
            if tag.tag not in {
                '{http://www.drugbank.ca}name',
                '{http://www.drugbank.ca}description',
                '{http://www.drugbank.ca}state',
                '{http://www.drugbank.ca}groups',
                '{http://www.drugbank.ca}indication',
                '{http://www.drugbank.ca}pharmacodynamics',
                '{http://www.drugbank.ca}mechanism-of-action',
                '{http://www.drugbank.ca}toxicity',
                '{http://www.drugbank.ca}metabolism',
                '{http://www.drugbank.ca}absorption',
                '{http://www.drugbank.ca}half-life',
                '{http://www.drugbank.ca}protein-binding',
                '{http://www.drugbank.ca}route-of-elimination',
                '{http://www.drugbank.ca}classification',
                '{http://www.drugbank.ca}synonyms',
                '{http://www.drugbank.ca}products',
                '{http://www.drugbank.ca}mixtures',
                '{http://www.drugbank.ca}categories',
                '{http://www.drugbank.ca}affected-organisms',
                '{http://www.drugbank.ca}food-interactions',
                '{http://www.drugbank.ca}drug-interactions',
                '{http://www.drugbank.ca}experimental-properties',
                '{http://www.drugbank.ca}pathways',
                '{http://www.drugbank.ca}targets',
                '{http://www.drugbank.ca}reactions',
                '{http://www.drugbank.ca}snp-effects',
                '{http://www.drugbank.ca}snp-adverse-drug-reactions'
            }:
                drug.remove(tag)
            if tag.tag == '{http://www.drugbank.ca}classification':
                for classification in tag:
                    if classification.tag not in {
                        '{http://www.drugbank.ca}direct-parent',
                        '{http://www.drugbank.ca}kingdom',
                        '{http://www.drugbank.ca}superclass',
                        '{http://www.drugbank.ca}class',
                        '{http://www.drugbank.ca}subclass'
                    }:
                        tag.remove(classification)
            if tag.tag == '{http://www.drugbank.ca}products':
                for product in tag:
                    if product.tag == '{http://www.drugbank.ca}product':
                        for sub_tag in product:
                            if sub_tag.tag not in {
                                '{http://www.drugbank.ca}name',
                                '{http://www.drugbank.ca}route',
                                '{http://www.drugbank.ca}generic',
                                '{http://www.drugbank.ca}over-the-counter',
                                '{http://www.drugbank.ca}approved'
                            }:
                                product.remove(sub_tag)
            if tag.tag == '{http://www.drugbank.ca}categories':
                for category in tag:
                    if category.tag == '{http://www.drugbank.ca}category':
                        for sub_tag in category:
                            if sub_tag.tag != '{http://www.drugbank.ca}category':
                                category.remove(sub_tag)
            if tag.tag == '{http://www.drugbank.ca}drug-interactions':
                for interaction in tag:
                    if interaction.tag == '{http://www.drugbank.ca}drug-interaction':
                        for sub_tag in interaction:
                            if sub_tag.tag not in {
                                '{http://www.drugbank.ca}name',
                                '{http://www.drugbank.ca}description'
                            }:
                                interaction.remove(sub_tag)
            if tag.tag == '{http://www.drugbank.ca}experimental-properties':
                for property in tag:
                    if property.tag == '{http://www.drugbank.ca}property':
                        for sub_tag in property:
                            if sub_tag.tag not in {
                                '{http://www.drugbank.ca}kind',
                                '{http://www.drugbank.ca}value'
                            }:
                                property.remove(sub_tag)
            if tag.tag == '{http://www.drugbank.ca}pathways':
                for pathway in tag:
                    if pathway.tag == '{http://www.drugbank.ca}pathway':
                        for sub_tag in pathway:
                            if sub_tag.tag not in {
                                '{http://www.drugbank.ca}name',
                                '{http://www.drugbank.ca}category',
                                '{http://www.drugbank.ca}drugs'
                            }:
                                pathway.remove(sub_tag)
                            if sub_tag.tag == '{http://www.drugbank.ca}drugs':
                                for p_drug in sub_tag:
                                    if p_drug.tag == '{http://www.drugbank.ca}drug':
                                        for sub_sub_tag in p_drug:
                                            if sub_sub_tag.tag != '{http://www.drugbank.ca}name':
                                                p_drug.remove(sub_sub_tag)
            if tag.tag == '{http://www.drugbank.ca}targets':
                for target in tag:
                    if target.tag == '{http://www.drugbank.ca}target':
                        for sub_tag in target:
                            if sub_tag.tag not in {
                                '{http://www.drugbank.ca}name',
                                '{http://www.drugbank.ca}organism',
                                '{http://www.drugbank.ca}actions',
                                '{http://www.drugbank.ca}polypeptide'
                            }:
                                target.remove(sub_tag)
                            if sub_tag.tag == '{http://www.drugbank.ca}polypeptide':
                                for sub_sub_tag in sub_tag:
                                    if sub_sub_tag.tag not in {
                                        '{http://www.drugbank.ca}name',
                                        '{http://www.drugbank.ca}general-function',
                                        '{http://www.drugbank.ca}pfams',
                                        '{http://www.drugbank.ca}go-classifiers'
                                    }:
                                        sub_tag.remove(sub_sub_tag)
                                    if sub_sub_tag.tag == '{http://www.drugbank.ca}pfams':
                                        for pfam in sub_sub_tag:
                                            if pfam.tag == '{http://www.drugbank.ca}pfam':
                                                for sub_sub_sub_tag in pfam:
                                                    if sub_sub_sub_tag.tag != '{http://www.drugbank.ca}name':
                                                        pfam.remove(sub_sub_sub_tag)
    return tree


def add_buffer(tree):
    drugbank = tree.getroot()
    for drug in drugbank:
        for tag in drug:
            elem = etree.SubElement(tag, 'xxxx')
            elem.text = ' xxxx xxxx xxxx xxxx '
    return tree


def get_tree(filename, type, groups):
    tree = etree.parse(filename)
    if type == 'all':
        selected = total = len(tree.getroot().findall('{http://www.drugbank.ca}drug'))
    elif type == 'only':
        tree, selected, total = only_right_groups(tree, groups)
    else:
        tree, selected, total = some_right_groups(tree, groups)
    return tree, selected, total


def limit_number(tree, number):
    new_drugbank = etree.XML('<drugbank xmlns="http://www.drugbank.ca" '
                             'xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" '
                             'xsi:schemaLocation="http://www.drugbank.ca http://www.drugbank.ca/docs/drugbank.xsd" '
                             'version="5.0" exported-on="2017-01-09"></drugbank>')
    drugbank = tree.getroot()
    selected = 0
    for drug in drugbank:
        new_drugbank.append(drug)
        selected += 1
        if selected > number:
            break
    new_tree = etree.ElementTree(new_drugbank)
    return new_tree


def get_drug_names(tree):
    drugs = []
    concatenated_drugs = []
    drugbank = tree.getroot()
    for drug in drugbank:
        for tag in drug:
            if tag.tag == '{http://www.drugbank.ca}name':
                name = tag.text
                drugs.append(name)
                name = re.sub('[^a-zA-ZáéíóúÁÉÍÓÚâêîôÂÊÎÔãõÃÕçÇ]+', ' ', name)
                while True:
                    name, n = re.subn(' ', '', name)
                    if n == 0:
                        break
                concatenated_drugs.append(name)
                break
    return drugs, concatenated_drugs


def concatenate_drug_names(text, drugs, concatenated_drugs):
    for i in range(len(drugs)):
        text = text.replace(drugs[i], concatenated_drugs[i])
    return text


def save_drug_names(filename):
    drugs = []
    concatenated_drugs = []
    tree = etree.parse(filename)
    drugbank = tree.getroot()
    for drug in drugbank:
        for tag in drug:
            if tag.tag == '{http://www.drugbank.ca}name':
                name = tag.text
                drugs.append(name)
                name = name.lower()
                name = re.sub('[^a-zA-ZáéíóúÁÉÍÓÚâêîôÂÊÎÔãõÃÕçÇ]+', ' ', name)
                while True:
                    name, n = re.subn(' ', '', name)
                    if n == 0:
                        break
                concatenated_drugs.append(name)
                break
    with open('drug_names', 'wb') as fp:
        pickle.dump(drugs, fp)
    with open('concatenated_drug_names', 'wb') as fp:
        pickle.dump(concatenated_drugs, fp)


def read_data(filename, number, type, groups):
    tree, selected, total = get_tree(filename, type, groups)
    if number > 0:
        tree = limit_number(tree, number)
    drugs, concatenated_drugs = get_drug_names(tree)
    tree = relevant_tags_word2vec(tree)
    #    tree = add_buffer(tree)
    text = etree.tostring(tree, encoding='utf8', method='text').decode('utf-8')
    text = concatenate_drug_names(text, drugs, concatenated_drugs)
    text = re.sub('[^a-zA-ZáéíóúÁÉÍÓÚâêîôÂÊÎÔãõÃÕçÇ]+', ' ', text)
    text = re.sub('\s[a-zA-ZáéíóúÁÉÍÓÚâêîôÂÊÎÔãõÃÕçÇ]\s', ' ', text)
    # stop_words = set(stopwords.words('english'))
    data = [word.lower() for word in text.split()]
    # articles_prepositions = {'', 'a', 'an', 'the', 'at', 'as', 'by', 'but', 'for', 'in', 'of', 'on', 'to', 'with',
    # 'db'}
    # stemmer = SnowballStemmer("english")
    # data = [stemmer.stem(word) for word in data if
    #        2 < len(word) < 30 and word not in stop_words | articles_prepositions]
    return data, len(data), selected, total


def build_dataset(words, vocabulary_size):
    count = [['UNK', -1]]
    count.extend(collections.Counter(words).most_common(vocabulary_size - 1))
    dictionary = dict()
    for word, _ in count:
        dictionary[word] = len(dictionary)
    data = list()
    unk_count = 0
    for word in words:
        if word in dictionary:
            index = dictionary[word]
        else:
            index = 0  # dictionary['UNK']
            unk_count += 1
        data.append(index)
    count[0][1] = unk_count
    reverse_dictionary = dict(zip(dictionary.values(), dictionary.keys()))
    return data, count, dictionary, reverse_dictionary, len(reverse_dictionary)


def word2vec(number, type, groups):
    sys.stdout = open('drugbank_word2vec.log', 'a')
    if number > 0:
        number_str = '_' + str(number)
    else:
        number_str = ''
    if type == 'all':
        print('\nselecting free text in all drugs')
        pickle_file = 'drugbank_words_' + type + number_str
    else:
        print('\nselecting free text from drugs with ' + type + ' groups: ' + ' '.join(groups))
        pickle_file = 'drugbank_words_' + type + '_' + '_'.join(groups) + number_str
    words, num_words, selected, total = read_data('drugbank.xml', number, type, groups)
    if 0 < number < selected:
        final = number
    else:
        final = selected
    print(str(final) + ' drugs selected from ' + str(selected) + ' fulfilling conditions in a total of ' + str(total))
    print(str(num_words) + ' total words')
    with open(pickle_file, 'wb') as fp:
        pickle.dump(words, fp)
    print('text dumped in pickle file')
    data, count, dictionary, reverse_dictionary, vocabulary_size = build_dataset(words, len(words))
    print(str(vocabulary_size) + ' distinct words in the text')
    with open(pickle_file + '_data', 'wb') as fp:
        pickle.dump(data, fp)
    with open(pickle_file + '_count', 'wb') as fp:
        pickle.dump(count, fp)
    with open(pickle_file + '_dictionary', 'wb') as fp:
        pickle.dump(dictionary, fp)
    with open(pickle_file + '_reverse_dictionary', 'wb') as fp:
        pickle.dump(reverse_dictionary, fp)
    print('data, count, dictionary and reverse_dictionary dumped in pickle files')


def prolog(number, type, groups):
    sys.stdout = open('drugbank_prolog.log', 'a')
    if number > 0:
        number_str = '_' + str(number)
    else:
        number_str = ''
    if type == 'all':
        print('\nfiltering xml for prolog in all drugs')
        xml_file = 'drugbank_' + type + number_str + '.xml'
    else:
        print('\nfiltering xml for prolog from drugs with ' + type + ' groups: ' + ' '.join(groups))
        xml_file = 'drugbank_' + type + '_' + '_'.join(groups) + number_str + '.xml'
    tree, selected, total = get_tree('drugbank.xml', type, groups)
    if number > 0:
        tree = limit_number(tree, number)
    if 0 < number < selected:
        final = number
    else:
        final = selected
    print(str(final) + ' drugs selected from ' + str(selected) + ' fulfilling conditions in a total of ' + str(total))
    tree = relevant_tags_prolog(tree)
    tree.write(xml_file, pretty_print=True, xml_declaration=True, encoding="utf-8")
    print('filtered xml file created')
    replace_tag_hyphens(xml_file)


# argv[1] = what to do: hyphens - replace hyphens in xml tags with underscores
#                       names - save drug names list to a pickle file
#                       word2vec - build dataset for word2vec
#                       prolog - filter xml for prolog
# argv[2] - if argv[1] hyphens/names = file name including extension
# argv[2] - if argv[1] word2vec / prolog = number of drugs to include (0 to include all)
# argv[3] - if argv[1] word2vec / prolog =
#           which drugs: all / only - only groups from argv[4:] / some - at least a group in argv[4:]
# argv[4:] - if argv[1] word2vec / prolog =
#            groups, subset {approved, illicit, experimental, withdrawn, nutraceutical, investigational, vet_approved}
def main(argv):
    if argv[1] == 'hyphens':
        replace_tag_hyphens(argv[2])
    elif argv[1] == 'names':
        save_drug_names(argv[2])
    elif argv[1] == 'word2vec':
        word2vec(int(argv[2]), argv[3], argv[4:])
    else:
        prolog(int(argv[2]), argv[3], argv[4:])


if __name__ == '__main__':
    main(sys.argv)
