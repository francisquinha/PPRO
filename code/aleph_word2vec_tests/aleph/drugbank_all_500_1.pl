[theory]

[Rule 2] [Pos cover = 13 Neg cover = 7]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), category(A,'Anticonvulsants').

[Rule 3] [Pos cover = 26 Neg cover = 2]
drug_interaction(A,B) :-
   category(A,'Anticonvulsants'), target(B,'D(2) dopamine receptor','Human').

[Rule 7] [Pos cover = 12 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Anticonvulsants'), category(A,'Anticonvulsants').

[Rule 8] [Pos cover = 16 Neg cover = 4]
drug_interaction(A,B) :-
   category(B,'Benzene Derivatives'), category(A,'Anticonvulsants').

[Rule 10] [Pos cover = 10 Neg cover = 6]
drug_interaction(A,B) :-
   subclass(B,'Pyrimidines and pyrimidine derivatives'), category(A,'Anticonvulsants').

[Rule 11] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   category(A,'Anticonvulsants'), target_action(B,'Sodium-dependent noradrenaline transporter',inhibitor).

[Rule 12] [Pos cover = 43 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Antipsychotic Agents'), target(B,'D(2) dopamine receptor','Human').

[Rule 13] [Pos cover = 18 Neg cover = 10]
drug_interaction(A,B) :-
   subclass(B,'Pyrimidines and pyrimidine derivatives'), category(A,'Antipsychotic Agents').

[Rule 14] [Pos cover = 7 Neg cover = 0]
drug_interaction(A,B) :-
   class(B,'Yohimbine alkaloids'), target(A,'D(2) dopamine receptor','Human').

[Rule 15] [Pos cover = 28 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Anticonvulsants'), category(A,'Antipsychotic Agents').

[Rule 16] [Pos cover = 7 Neg cover = 0]
drug_interaction(A,B) :-
   property(B,'Water Solubility','572 mg/ml (Hydrochloride salt)'), target(A,'D(2) dopamine receptor','Human').

[Rule 21] [Pos cover = 13 Neg cover = 2]
drug_interaction(A,B) :-
   category(A,'Antineoplastic and Immunomodulating Agents'), property(B,'Hydrophobicity','-0.415').

[Rule 22] [Pos cover = 24 Neg cover = 18]
drug_interaction(A,B) :-
   state(B,liquid), state(A,liquid), category(B,'Antineoplastic Agents'), category(A,'Antineoplastic Agents').

[Rule 25] [Pos cover = 5 Neg cover = 2]
drug_interaction(A,B) :-
   subclass(B,'Triterpenoids'), target(A,'D(2) dopamine receptor','Human').

[Rule 26] [Pos cover = 5 Neg cover = 2]
drug_interaction(A,B) :-
   subclass(B,'Imidazoles'), target(A,'D(2) dopamine receptor','Human').

[Rule 28] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Lysergic acids and derivatives'), target_action(A,'D(2) dopamine receptor',antagonist).

[Rule 29] [Pos cover = 13 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), target(A,'D(1A) dopamine receptor','Human').

[Rule 30] [Pos cover = 9 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Antiarrhythmics, Class I and III'), target(A,'D(1A) dopamine receptor','Human').

[Rule 31] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Hydroxycinnamic acids and derivatives'), target_action(A,'D(2) dopamine receptor',antagonist).

[Rule 35] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   property(B,'Water Solubility','7200 mg/L (at 25 °C)'), target_action(A,'D(2) dopamine receptor',antagonist).

[Rule 39] [Pos cover = 13 Neg cover = 0]
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

[Rule 48] [Pos cover = 12 Neg cover = 1]
drug_interaction(A,B) :-
   category(A,'Blood Glucose Lowering Agents'), target(B,'Insulin receptor','Human').

[Rule 50] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Blood Glucose Lowering Agents'), property(B,'Water Solubility','572 mg/ml (Hydrochloride salt)').

[Rule 51] [Pos cover = 8 Neg cover = 1]
drug_interaction(A,B) :-
   category(A,'Amides'), affected_organism(A,'Humans and other mammals'), target(B,'D(1A) dopamine receptor','Human').

[Rule 64] [Pos cover = 9 Neg cover = 6]
drug_interaction(A,B) :-
   category(A,'Antihypertensive Agents'), target(B,'Sodium channel protein type 5 subunit alpha','Human').

[Rule 65] [Pos cover = 9 Neg cover = 6]
drug_interaction(A,B) :-
   category(A,'Antihypertensive Agents'), target(B,'Potassium voltage-gated channel subfamily H member 2','Human').

[Rule 68] [Pos cover = 13 Neg cover = 2]
drug_interaction(A,B) :-
   category(A,'Antihypertensive Agents'), target(B,'D(1A) dopamine receptor','Human').

[Rule 71] [Pos cover = 20 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), category(A,'Antihypertensive Agents').

[Rule 77] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   category(A,'Antihypertensive Agents'), target_action(B,'Sodium-dependent noradrenaline transporter',inhibitor).

[Rule 78] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Antihypertensive Agents'), property(B,'Hydrophobicity','-0.414').

[Rule 90] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Azoles'), target_action(A,'Potassium voltage-gated channel subfamily H member 2',inhibitor).

[Rule 127] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Hydroxycinnamic acids and derivatives'), category(B,'Antiemetics').

[Rule 136] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   subclass(A,'Phenol ethers'), category(B,'Anticonvulsants').

[Rule 137] [Pos cover = 7 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Antipsychotic Agents'), property(A,'Water Solubility','7200 mg/L (at 25 °C)').

[Rule 147] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   subclass(A,'Lysergic acids and derivatives'), category(B,'Amines').

[Rule 148] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Lysergic acids and derivatives'), target_action(B,'D(2) dopamine receptor',antagonist).

[Rule 162] [Pos cover = 6 Neg cover = 3]
drug_interaction(A,B) :-
   target(A,'Sodium channel protein type 5 subunit alpha','Human'), target_polypeptide(B,'Potassium voltage-gated channel subfamily H member 2','Potassium voltage-gated channel subfamily H member 2','Voltage-gated potassium channel activity involved in ventricular cardiac muscle cell action potential repolarization').

[Rule 182] [Pos cover = 5 Neg cover = 2]
drug_interaction(A,B) :-
   subclass(A,'Triterpenoids'), target(B,'D(2) dopamine receptor','Human').

[Rule 197] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   subclass(A,'Imidazoles'), category(B,'Amines').

[Rule 213] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Angiogenesis Inhibitors'), target(A,'DNA','Human').

[Rule 243] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   class(B,'Benzothiazepines'), category(A,'Anti-Infective Agents').

[Rule 261] [Pos cover = 10 Neg cover = 6]
drug_interaction(A,B) :-
   subclass(A,'Pyrimidines and pyrimidine derivatives'), category(B,'Anticonvulsants').

[Rule 264] [Pos cover = 84 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Central Nervous System Depressants'), target_action(B,'D(2) dopamine receptor',antagonist).

[Rule 306] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Analgesics'), category(A,'Anti-Arrhythmia Agents').

[Rule 335] [Pos cover = 13 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Antineoplastic and Immunomodulating Agents'), property(A,'Hydrophobicity','-0.415').

[Rule 352] [Pos cover = 12 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Blood Glucose Lowering Agents'), target(A,'Insulin receptor','Human').

[Training set performance]
            Actual
        +          -  
     + 509        141        650 
Pred 
     - 525        8725        9250 

       1034        8866        9900 

Accuracy = 0.9327272727272727
[Training set summary] [[509,141,525,8725]]
[Test set performance]
              Actual
         +            -   
     +  1818          1745          3563  
Pred 
     - 14680        142157        156837 

       16498        143902        160400 

Accuracy = 0.8975997506234414
[Test set summary] [[1818,1745,14680,142157]]
[time taken] [1725.366]
[total clauses constructed] [4162762]
true.
