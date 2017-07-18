[theory]

[Rule 4] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Adjuvants'), category(A,'Acids, Heterocyclic').

[Rule 9] [Pos cover = 11 Neg cover = 5]
drug_interaction(A,B) :-
   category(A,'Central Nervous System Agents'), property(B,'Melting Point','84.5 °C').

[Rule 10] [Pos cover = 42 Neg cover = 10]
drug_interaction(A,B) :-
   category(A,'Central Nervous System Agents'), target(B,'Histamine H2 receptor','Human').

[Rule 11] [Pos cover = 240 Neg cover = 32]
drug_interaction(A,B) :-
   category(B,'Central Nervous System Depressants'), category(A,'Central Nervous System Agents').

[Rule 12] [Pos cover = 12 Neg cover = 3]
drug_interaction(A,B) :-
   state(B,solid), state(A,solid), class(B,'Tetracyclines'), category(A,'Central Nervous System Agents').

[Rule 13] [Pos cover = 11 Neg cover = 4]
drug_interaction(A,B) :-
   state(B,solid), state(A,solid), category(A,'Central Nervous System Agents'), affected_organism(B,'Human Immunodeficiency Virus').

[Rule 14] [Pos cover = 16 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(B,'Indolines'), category(A,'Central Nervous System Agents').

[Rule 15] [Pos cover = 11 Neg cover = 4]
drug_interaction(A,B) :-
   state(A,solid), category(A,'Central Nervous System Agents'), property(B,'Water Solubility','3.5 mg/mL').

[Rule 37] [Pos cover = 6 Neg cover = 3]
drug_interaction(A,B) :-
   category(A,'Antibodies'), target(B,'Integrin alpha-4','Human').

[Rule 45] [Pos cover = 20 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Analgesics'), target(A,'D(3) dopamine receptor','Human').

[Rule 51] [Pos cover = 8 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Adrenergic Agents'), target(A,'D(1A) dopamine receptor','Human').

[Rule 55] [Pos cover = 7 Neg cover = 4]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), target(A,'D(1A) dopamine receptor','Human').

[Rule 62] [Pos cover = 5 Neg cover = 2]
drug_interaction(A,B) :-
   class(A,'Tetracyclines'), category(B,'Analgesics').

[Rule 76] [Pos cover = 7 Neg cover = 5]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), target(A,'Gamma-aminobutyric acid receptor subunit alpha-1','Human').

[Rule 79] [Pos cover = 5 Neg cover = 2]
drug_interaction(A,B) :-
   state(A,solid), subclass(B,'Imidazoles'), category(A,'Antineoplastic Agents'), affected_organism(A,'Humans and other mammals').

[Rule 80] [Pos cover = 8 Neg cover = 1]
drug_interaction(A,B) :-
   category(A,'Antineoplastic Agents'), affected_organism(A,'Humans and other mammals'), target(B,'Integrin alpha-4','Human').

[Rule 84] [Pos cover = 7 Neg cover = 4]
drug_interaction(A,B) :-
   category(A,'Antihypertensive Agents'), target(B,'D(3) dopamine receptor','Human').

[Rule 85] [Pos cover = 18 Neg cover = 8]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Cardiovascular Agents'), category(A,'Antihypertensive Agents').

[Rule 87] [Pos cover = 9 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Antineoplastic Agents'), target(A,'Integrin alpha-4','Human').

[Rule 118] [Pos cover = 33 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Central Nervous System Agents'), category(A,'Antihistamines for Systemic Use').

[Rule 131] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   subclass(A,'Benzenesulfonamides'), target(B,'Mu-type opioid receptor','Human').

[Rule 132] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   subclass(A,'Benzenesulfonamides'), category(B,'Antihypertensive Agents').

[Rule 149] [Pos cover = 18 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Analgesics'), category(A,'Adjuvants').

[Rule 177] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Analgesics'), property(A,'Melting Point','84.5 °C').

[Rule 196] [Pos cover = 36 Neg cover = 4]
drug_interaction(A,B) :-
   category(B,'Analgesics'), target(A,'5-hydroxytryptamine receptor 1A','Human').

[Rule 213] [Pos cover = 11 Neg cover = 4]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Central Nervous System Agents'), affected_organism(A,'Human Immunodeficiency Virus').

[Rule 214] [Pos cover = 11 Neg cover = 4]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Central Nervous System Agents'), property(A,'Water Solubility','3.5 mg/mL').

[Rule 242] [Pos cover = 9 Neg cover = 1]
drug_interaction(A,B) :-
   category(A,'Amines'), category(A,'Analgesics'), target(B,'D(2) dopamine receptor','Human').

[Training set performance]
            Actual
        +          -  
     + 484        113        597 
Pred 
     - 352        8247        8599 

       836        8360        9196 

Accuracy = 0.9494345367551109
[Training set summary] [[484,113,352,8247]]
[Test set performance]
              Actual
         +            -   
     +  4325          3814          8139  
Pred 
     - 13375        138886        152261 

       17700        142700        160400 

Accuracy = 0.8928366583541147
[Test set summary] [[4325,3814,13375,138886]]
[time taken] [814.378]
[total clauses constructed] [2182108]
true.
