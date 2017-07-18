[theory]

[Rule 8] [Pos cover = 7 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Cardiovascular Agents'), target(A,'Sodium-dependent noradrenaline transporter','Human'), word2vec(B,C), category(C,'Anti-HIV Agents').

[Rule 9] [Pos cover = 8 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Alpha1 Antagonists'), target(A,'Sodium-dependent noradrenaline transporter','Human').

[Rule 10] [Pos cover = 12 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Aminoglycosides'), word2vec(A,C), category(C,'Benzodiazepine Related Drugs').

[Rule 13] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), category(A,'Acids, Carbocyclic'), word2vec(A,C).

[Rule 15] [Pos cover = 19 Neg cover = 9]
drug_interaction(A,B) :-
   category(B,'Azoles'), category(A,'Amides'), affected_organism(A,'Humans and other mammals').

[Rule 26] [Pos cover = 27 Neg cover = 13]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Central Nervous System Agents'), target_action(A,'Potassium voltage-gated channel subfamily H member 2',inhibitor).

[Rule 31] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Benzenesulfonamides'), word2vec(A,C), target(C,'Lanosterol 14-alpha demethylase','Yeast').

[Rule 32] [Pos cover = 7 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), target_action(A,'Potassium voltage-gated channel subfamily H member 2',inhibitor).

[Rule 35] [Pos cover = 9 Neg cover = 1]
drug_interaction(A,B) :-
   category(A,'Antihypertensive Agents'), target(B,'Dihydrofolate reductase','Human').

[Rule 37] [Pos cover = 9 Neg cover = 5]
drug_interaction(A,B) :-
   category(B,'Alpha1 Antagonists'), category(A,'Antihypertensive Agents').

[Rule 39] [Pos cover = 9 Neg cover = 3]
drug_interaction(A,B) :-
   subclass(B,'Benzenesulfonamides'), word2vec(A,C), state(C,solid), category(C,'Antihypertensive Agents').

[Rule 44] [Pos cover = 10 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Amides'), category(A,'Anticonvulsants'), affected_organism(B,'Humans and other mammals').

[Rule 45] [Pos cover = 13 Neg cover = 2]
drug_interaction(A,B) :-
   target(A,'Gamma-aminobutyric acid receptor subunit alpha-1','Human'), target_polypeptide(B,'D(2) dopamine receptor','D(2) dopamine receptor','Potassium channel regulator activity').

[Rule 48] [Pos cover = 8 Neg cover = 4]
drug_interaction(A,B) :-
   target(B,'Gamma-aminobutyric acid receptor subunit alpha-1','Human'), target_action(A,'Muscarinic acetylcholine receptor M1',antagonist).

[Rule 49] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Adrenal Cortex Hormones'), target_action(B,'Prostaglandin G/H synthase 2',inhibitor).

[Rule 51] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'BCRP/ABCG2 Substrates'), target(A,'Glucocorticoid receptor','Human').

[Rule 52] [Pos cover = 28 Neg cover = 22]
drug_interaction(A,B) :-
   state(A,solid), category(B,'Adjuvants, Anesthesia'), category(A,'Chemical Actions and Uses'), affected_organism(A,'Humans and other mammals').

[Rule 53] [Pos cover = 34 Neg cover = 16]
drug_interaction(A,B) :-
   state(A,solid), subclass(B,'Imidazolidines'), category(A,'Chemical Actions and Uses'), affected_organism(A,'Humans and other mammals').

[Rule 56] [Pos cover = 35 Neg cover = 24]
drug_interaction(A,B) :-
   state(B,solid), class(A,'Benzothiazepines'), affected_organism(B,'Humans and other mammals').

[Rule 57] [Pos cover = 6 Neg cover = 4]
drug_interaction(A,B) :-
   category(B,'Anti-Acne Preparations'), category(A,'Antihypertensive Agents'), word2vec(B,C), class(C,'Benzene and substituted derivatives').

[Rule 61] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   class(B,'Benzothiazepines'), word2vec(A,C), target(C,'Lanosterol 14-alpha demethylase','Yeast').

[Rule 63] [Pos cover = 8 Neg cover = 3]
drug_interaction(A,B) :-
   target(B,'Gamma-aminobutyric acid receptor subunit alpha-1','Human'), word2vec(A,C), target_action(C,'Lanosterol 14-alpha demethylase',antagonist).

[Rule 66] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   state(B,solid), category(A,'Adjuvants, Anesthesia'), word2vec(B,C), target(C,'D(2) dopamine receptor','Human').

[Rule 69] [Pos cover = 9 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Amides'), affected_organism(B,'Humans and other mammals'), target(A,'Gamma-aminobutyric acid receptor subunit alpha-2','Human').

[Rule 73] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   target(A,'Sodium channel protein type 5 subunit alpha','Human'), word2vec(B,C), subclass(C,'Tertiary amines').

[Rule 75] [Pos cover = 7 Neg cover = 5]
drug_interaction(A,B) :-
   subclass(A,'Phenol ethers'), category(B,'Amides'), affected_organism(B,'Humans and other mammals').

[Rule 77] [Pos cover = 16 Neg cover = 7]
drug_interaction(A,B) :-
   target(B,'D(2) dopamine receptor','Human'), word2vec(A,C), category(C,'Calcium Channel Blockers').

[Rule 78] [Pos cover = 8 Neg cover = 1]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Analgesics'), category(A,'Anticoagulants').

[Rule 79] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Sulfated steroids'), word2vec(A,C), category(C,'Calcium Channel Blockers').

[Rule 80] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(B,'Amino Acids, Peptides, and Analogues'), category(B,'Anti-Infective Agents'), category(A,'Anticoagulants').

[Rule 81] [Pos cover = 6 Neg cover = 3]
drug_interaction(A,B) :-
   target_action(B,'Potassium voltage-gated channel subfamily H member 2',inhibitor), word2vec(A,C), category(C,'Calcium Channel Blockers').

[Rule 82] [Pos cover = 7 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Anticoagulants'), target(A,'Prothrombin','Human').

[Rule 87] [Pos cover = 20 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), category(A,'Antihypertensive Agents').

[Rule 89] [Pos cover = 12 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Anti-Bacterial Agents'), category(A,'Aminoglycosides'), word2vec(B,C), category(C,'Benzodiazepine Related Drugs').

[Rule 93] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Antimalarials'), word2vec(A,C), subclass(C,'Benzenesulfonamides'), affected_organism(C,'Humans and other mammals').

[Rule 98] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   target(B,'Alpha-1A adrenergic receptor','Human'), word2vec(A,C), property(C,'Melting Point','349.84 °C').

[Rule 99] [Pos cover = 9 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Azoles'), target(B,'D(2) dopamine receptor','Human'), word2vec(A,C), affected_organism(C,'Human Immunodeficiency Virus').

[Rule 100] [Pos cover = 6 Neg cover = 4]
drug_interaction(A,B) :-
   target(B,'Estrogen receptor','Human'), word2vec(A,C), affected_organism(C,'Human Immunodeficiency Virus').

[Rule 101] [Pos cover = 8 Neg cover = 1]
drug_interaction(A,B) :-
   category(A,'Azoles'), target(B,'Sodium-dependent noradrenaline transporter','Human'), word2vec(A,C), category(C,'Anti-HIV Agents').

[Rule 103] [Pos cover = 8 Neg cover = 3]
drug_interaction(A,B) :-
   category(A,'Anticonvulsants'), word2vec(B,C), target(C,'Lanosterol 14-alpha demethylase','Yeast').

[Rule 104] [Pos cover = 10 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), word2vec(A,C), property(C,'Melting Point','349.84 °C').

[Rule 107] [Pos cover = 14 Neg cover = 6]
drug_interaction(A,B) :-
   target(A,'Alpha-1A adrenergic receptor','Human'), target_polypeptide(B,'Alpha-1A adrenergic receptor','Alpha-1A adrenergic receptor','Protein heterodimerization activity').

[Rule 108] [Pos cover = 34 Neg cover = 16]
drug_interaction(A,B) :-
   state(A,solid), class(B,'Benzothiazepines'), category(A,'Chemical Actions and Uses'), affected_organism(A,'Humans and other mammals').

[Rule 111] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   category(A,'BCRP/ABCG2 Substrates'), target(B,'Glucocorticoid receptor','Human').

[Rule 123] [Pos cover = 20 Neg cover = 0]
drug_interaction(A,B) :-
   target(A,'D(2) dopamine receptor','Human'), target_polypeptide(B,'D(2) dopamine receptor','D(2) dopamine receptor','Potassium channel regulator activity').

[Rule 124] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Anesthetics'), target(A,'D(2) dopamine receptor','Human').

[Rule 125] [Pos cover = 11 Neg cover = 3]
drug_interaction(A,B) :-
   target(A,'D(2) dopamine receptor','Human'), word2vec(B,C), target(C,'Sodium channel protein type 1 subunit alpha','Human').

[Rule 128] [Pos cover = 6 Neg cover = 3]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Analgesics'), target_action(A,'D(2) dopamine receptor',antagonist).

[Rule 129] [Pos cover = 11 Neg cover = 3]
drug_interaction(A,B) :-
   category(A,'Anti-Anxiety Agents'), word2vec(B,C), subclass(C,'Benzenesulfonamides').

[Rule 130] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   class(A,'Dibenzocycloheptenes'), word2vec(B,C), target(C,'Lanosterol 14-alpha demethylase','Yeast').

[Rule 154] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Anticoagulants'), target_action(A,'Prostaglandin G/H synthase 2',inhibitor).

[Rule 155] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Adrenal Cortex Hormones'), target_action(A,'Prostaglandin G/H synthase 2',inhibitor).

[Rule 172] [Pos cover = 10 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Antineoplastic Agents'), property(B,'Hydrophobicity','-0.415').

[Rule 184] [Pos cover = 9 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), category(A,'Antimalarials').

[Rule 198] [Pos cover = 6 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Adrenal Cortex Hormones'), word2vec(A,C), category(C,'Agents Acting on the Renin-Angiotensin System').

[Rule 199] [Pos cover = 6 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Aminoglycosides'), category(A,'Analgesics, Non-Narcotic').

[Rule 211] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   target(A,'Sodium channel protein type 10 subunit alpha','Human'), target_polypeptide(B,'5-hydroxytryptamine receptor 1A','5-hydroxytryptamine receptor 1A','Serotonin receptor activity').

[Rule 213] [Pos cover = 8 Neg cover = 4]
drug_interaction(A,B) :-
   category(A,'Amides'), affected_organism(A,'Humans and other mammals'), target_action(B,'Potassium voltage-gated channel subfamily H member 2',inhibitor).

[Rule 214] [Pos cover = 8 Neg cover = 4]
drug_interaction(A,B) :-
   category(A,'Amides'), affected_organism(A,'Humans and other mammals'), target(B,'Gamma-aminobutyric acid receptor subunit alpha-1','Human'), word2vec(B,C).

[Rule 217] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Anesthetics'), category(A,'Amides'), affected_organism(A,'Humans and other mammals').

[Rule 225] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Anti-Acne Preparations'), target(A,'Glucocorticoid receptor','Human'), word2vec(B,C), class(C,'Benzene and substituted derivatives').

[Rule 240] [Pos cover = 6 Neg cover = 3]
drug_interaction(A,B) :-
   state(B,solid), subclass(A,'Pyrimidine 2\'-deoxyribonucleosides'), category(B,'Cardiovascular Agents'), word2vec(B,C).

[Rule 244] [Pos cover = 6 Neg cover = 3]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Analgesics'), category(A,'Aminoglycosides').

[Rule 277] [Pos cover = 11 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Steroid lactones'), category(B,'Antineoplastic Agents').

[Rule 294] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Acids, Carbocyclic'), category(A,'Antihypertensive Agents'), word2vec(B,C).

[Rule 306] [Pos cover = 16 Neg cover = 4]
drug_interaction(A,B) :-
   state(A,solid), class(B,'Macrolides and analogues'), category(A,'Central Nervous System Agents').

[Rule 314] [Pos cover = 9 Neg cover = 3]
drug_interaction(A,B) :-
   subclass(A,'Benzenesulfonamides'), word2vec(B,C), state(C,solid), category(C,'Antihypertensive Agents').

[Rule 384] [Pos cover = 17 Neg cover = 2]
drug_interaction(A,B) :-
   state(B,solid), state(A,solid), class(B,'Dibenzocycloheptenes'), category(A,'Central Nervous System Agents').

[Rule 424] [Pos cover = 7 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'1,4-benzodiazepines'), affected_organism(A,'Humans and other mammals'), word2vec(A,C), word2vec(C,D), 
   subclass(D,'Benzenesulfonamides').

[Rule 502] [Pos cover = 11 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Steroid lactones'), category(A,'Antineoplastic Agents').

[Training set performance]
            Actual
        +          -  
     + 591        214        805 
Pred 
     - 421        8674        9095 

       1012        8888        9900 

Accuracy = 0.9358585858585858
[Training set summary] [[591,214,421,8674]]
[Test set performance]
              Actual
         +            -   
     +  2866          3893          6759  
Pred 
     - 13862        139779        153641 

       16728        143672        160400 

Accuracy = 0.8893079800498753
[Test set summary] [[2866,3893,13862,139779]]
[time taken] [51350.275]
[total clauses constructed] [4593473]
true.
