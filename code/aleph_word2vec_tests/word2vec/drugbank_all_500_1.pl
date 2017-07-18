[theory]

[Rule 2] [Pos cover = 13 Neg cover = 7]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), category(A,'Anticonvulsants').

[Rule 3] [Pos cover = 26 Neg cover = 2]
drug_interaction(A,B) :-
   category(A,'Anticonvulsants'), target(B,'D(2) dopamine receptor','Human').

[Rule 4] [Pos cover = 15 Neg cover = 8]
drug_interaction(A,B) :-
   category(A,'Anticonvulsants'), word2vec(B,C), word2vec(B,D), subclass(D,'Benzenesulfonamides').

[Rule 6] [Pos cover = 14 Neg cover = 4]
drug_interaction(A,B) :-
   category(A,'Anticonvulsants'), target(B,'GABA-A receptor (anion channel)','Human').

[Rule 7] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   subclass(B,'Phenol ethers'), category(A,'Anticonvulsants').

[Rule 9] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   category(A,'Anticonvulsants'), target_action(B,'Sodium-dependent noradrenaline transporter',inhibitor).

[Rule 10] [Pos cover = 14 Neg cover = 4]
drug_interaction(A,B) :-
   category(B,'Anticonvulsants'), target(A,'GABA-A receptor (anion channel)','Human').

[Rule 11] [Pos cover = 43 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Antipsychotic Agents'), target(B,'D(2) dopamine receptor','Human').

[Rule 12] [Pos cover = 18 Neg cover = 10]
drug_interaction(A,B) :-
   subclass(B,'Pyrimidines and pyrimidine derivatives'), category(A,'Antipsychotic Agents').

[Rule 13] [Pos cover = 12 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Adrenergic Agents'), target(A,'D(2) dopamine receptor','Human'), word2vec(B,C), category(C,'Amides').

[Rule 14] [Pos cover = 28 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Anticonvulsants'), category(A,'Antipsychotic Agents').

[Rule 15] [Pos cover = 7 Neg cover = 0]
drug_interaction(A,B) :-
   property(B,'Water Solubility','572 mg/ml (Hydrochloride salt)'), target(A,'D(2) dopamine receptor','Human').

[Rule 20] [Pos cover = 13 Neg cover = 2]
drug_interaction(A,B) :-
   category(A,'Antineoplastic and Immunomodulating Agents'), property(B,'Hydrophobicity','-0.415').

[Rule 24] [Pos cover = 9 Neg cover = 0]
drug_interaction(A,B) :-
   target(A,'D(1A) dopamine receptor','Human'), word2vec(B,C), subclass(C,'Amino acids, peptides, and analogues'), category(C,'Anti-HIV Agents').

[Rule 25] [Pos cover = 5 Neg cover = 2]
drug_interaction(A,B) :-
   subclass(B,'Imidazoles'), target(A,'D(2) dopamine receptor','Human').

[Rule 27] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Lysergic acids and derivatives'), target_action(A,'D(2) dopamine receptor',antagonist).

[Rule 28] [Pos cover = 13 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), target(A,'D(1A) dopamine receptor','Human').

[Rule 29] [Pos cover = 9 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Antiarrhythmics, Class I and III'), target(A,'D(1A) dopamine receptor','Human').

[Rule 30] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Hydroxycinnamic acids and derivatives'), target_action(A,'D(2) dopamine receptor',antagonist).

[Rule 34] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   property(B,'Water Solubility','7200 mg/L (at 25 °C)'), target_action(A,'D(2) dopamine receptor',antagonist).

[Rule 38] [Pos cover = 13 Neg cover = 0]
drug_interaction(A,B) :-
   target(A,'Sodium-dependent dopamine transporter','Human'), target_polypeptide(B,'D(2) dopamine receptor','D(2) dopamine receptor','Potassium channel regulator activity').

[Rule 40] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Anticonvulsants'), target(A,'Sodium-dependent dopamine transporter','Human').

[Rule 42] [Pos cover = 14 Neg cover = 6]
drug_interaction(A,B) :-
   category(B,'Adrenergic Agents'), category(A,'Adrenergic Agents').

[Rule 43] [Pos cover = 39 Neg cover = 28]
drug_interaction(A,B) :-
   state(B,solid), affected_organism(B,'Humans and other mammals'), property(A,'Water Solubility','572 mg/ml (Hydrochloride salt)').

[Rule 44] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Angiogenesis Inhibitors'), target(B,'DNA','Human').

[Rule 45] [Pos cover = 12 Neg cover = 8]
drug_interaction(A,B) :-
   category(B,'Antibodies'), property(A,'Melting Point','61 °C (FAB fragment), 71 °C (whole mAb)').

[Rule 46] [Pos cover = 15 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Antineoplastic Agents'), category(A,'Angiogenesis Inhibitors').

[Rule 47] [Pos cover = 12 Neg cover = 1]
drug_interaction(A,B) :-
   category(A,'Blood Glucose Lowering Agents'), target(B,'Insulin receptor','Human').

[Rule 49] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Blood Glucose Lowering Agents'), property(B,'Water Solubility','572 mg/ml (Hydrochloride salt)').

[Rule 50] [Pos cover = 8 Neg cover = 1]
drug_interaction(A,B) :-
   target(B,'D(1A) dopamine receptor','Human'), word2vec(A,C), target_action(C,'Prostaglandin G/H synthase 2',inhibitor).

[Rule 58] [Pos cover = 13 Neg cover = 4]
drug_interaction(A,B) :-
   category(A,'Amides'), affected_organism(A,'Humans and other mammals'), target_action(B,'D(2) dopamine receptor',antagonist).

[Rule 63] [Pos cover = 9 Neg cover = 6]
drug_interaction(A,B) :-
   category(A,'Antihypertensive Agents'), target(B,'Sodium channel protein type 5 subunit alpha','Human').

[Rule 64] [Pos cover = 9 Neg cover = 6]
drug_interaction(A,B) :-
   category(A,'Antihypertensive Agents'), target(B,'Potassium voltage-gated channel subfamily H member 2','Human').

[Rule 67] [Pos cover = 13 Neg cover = 2]
drug_interaction(A,B) :-
   category(A,'Antihypertensive Agents'), target(B,'D(1A) dopamine receptor','Human').

[Rule 68] [Pos cover = 12 Neg cover = 3]
drug_interaction(A,B) :-
   category(A,'Antihypertensive Agents'), word2vec(B,C), subclass(C,'Benzenesulfonamides'), category(C,'Amides').

[Rule 69] [Pos cover = 12 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Antihypertensive Agents'), word2vec(B,C), target(C,'Solute carrier family 12 member 1','Human').

[Rule 71] [Pos cover = 6 Neg cover = 3]
drug_interaction(A,B) :-
   category(A,'Antihypertensive Agents'), word2vec(B,C), category(C,'ACE Inhibitors and Diuretics').

[Rule 75] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   category(A,'Antihypertensive Agents'), target_action(B,'Sodium-dependent noradrenaline transporter',inhibitor).

[Rule 76] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Antihypertensive Agents'), property(B,'Hydrophobicity','-0.414').

[Rule 87] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Azoles'), target_action(A,'Potassium voltage-gated channel subfamily H member 2',inhibitor).

[Rule 104] [Pos cover = 8 Neg cover = 4]
drug_interaction(A,B) :-
   category(B,'Adjuvants, Anesthesia'), word2vec(A,C), subclass(C,'Benzenesulfonamides').

[Rule 106] [Pos cover = 15 Neg cover = 8]
drug_interaction(A,B) :-
   category(B,'Anticonvulsants'), word2vec(A,C), subclass(C,'Benzenesulfonamides').

[Rule 108] [Pos cover = 8 Neg cover = 1]
drug_interaction(A,B) :-
   target(B,'Sodium-dependent noradrenaline transporter','Human'), word2vec(A,C), subclass(C,'Benzenesulfonamides'), category(C,'Amides').

[Rule 122] [Pos cover = 14 Neg cover = 4]
drug_interaction(A,B) :-
   target(B,'D(1A) dopamine receptor','Human'), word2vec(A,C), subclass(C,'Benzenesulfonamides').

[Rule 129] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   subclass(A,'Phenol ethers'), category(B,'Anticonvulsants').

[Rule 130] [Pos cover = 7 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Antipsychotic Agents'), property(A,'Water Solubility','7200 mg/L (at 25 °C)').

[Rule 139] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   subclass(A,'Lysergic acids and derivatives'), category(B,'Amines').

[Rule 140] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Lysergic acids and derivatives'), target_action(B,'D(2) dopamine receptor',antagonist).

[Rule 150] [Pos cover = 15 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Angiogenesis Inhibitors'), category(A,'Antineoplastic Agents').

[Rule 155] [Pos cover = 6 Neg cover = 3]
drug_interaction(A,B) :-
   target(A,'Sodium channel protein type 5 subunit alpha','Human'), target_polypeptide(B,'Potassium voltage-gated channel subfamily H member 2','Potassium voltage-gated channel subfamily H member 2','Voltage-gated potassium channel activity involved in ventricular cardiac muscle cell action potential repolarization').

[Rule 185] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   subclass(A,'Imidazoles'), category(B,'Amines').

[Rule 229] [Pos cover = 5 Neg cover = 2]
drug_interaction(A,B) :-
   class(B,'Benzothiazepines'), category(A,'Anti-Infective Agents'), word2vec(A,C).

[Rule 244] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   subclass(A,'Pyrimidines and pyrimidine derivatives'), category(B,'Alcohols'), word2vec(B,C).

[Rule 245] [Pos cover = 84 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Central Nervous System Depressants'), target_action(B,'D(2) dopamine receptor',antagonist).

[Rule 255] [Pos cover = 9 Neg cover = 3]
drug_interaction(A,B) :-
   state(B,solid), target(A,'D(3) dopamine receptor','Human'), word2vec(B,C), word2vec(B,D), 
   target(D,'Prostaglandin G/H synthase 1','Human').

[Rule 280] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Analgesics'), category(A,'Anti-Arrhythmia Agents').

[Rule 307] [Pos cover = 13 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Antineoplastic and Immunomodulating Agents'), property(A,'Hydrophobicity','-0.415').

[Rule 320] [Pos cover = 12 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Blood Glucose Lowering Agents'), target(A,'Insulin receptor','Human').

[Training set performance]
            Actual
        +          -  
     + 565        162        727 
Pred 
     - 469        8704        9173 

       1034        8866        9900 

Accuracy = 0.9362626262626262
[Training set summary] [[565,162,469,8704]]
[Test set performance]
              Actual
         +            -   
     +  1912          2757          4669  
Pred 
     - 14586        141145        155731 

       16498        143902        160400 

Accuracy = 0.8918765586034912
[Test set summary] [[1912,2757,14586,141145]]
[time taken] [28822.494]
[total clauses constructed] [4959732]
true.
