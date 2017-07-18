[theory]

[Rule 9] [Pos cover = 8 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Alpha1 Antagonists'), target(A,'Sodium-dependent noradrenaline transporter','Human').

[Rule 10] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Aminoglycosides'), affected_organism(A,'Gram-negative Bacteria').

[Rule 11] [Pos cover = 34 Neg cover = 25]
drug_interaction(A,B) :-
   state(A,solid), subclass(B,'Imidazolidines'), affected_organism(A,'Humans and other mammals').

[Rule 14] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   state(A,solid), category(B,'Antihypertensive Agents'), category(A,'Acids, Carbocyclic').

[Rule 26] [Pos cover = 27 Neg cover = 13]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Central Nervous System Agents'), target_action(A,'Potassium voltage-gated channel subfamily H member 2',inhibitor).

[Rule 32] [Pos cover = 7 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), target_action(A,'Potassium voltage-gated channel subfamily H member 2',inhibitor).

[Rule 35] [Pos cover = 9 Neg cover = 1]
drug_interaction(A,B) :-
   category(A,'Antihypertensive Agents'), target(B,'Dihydrofolate reductase','Human').

[Rule 37] [Pos cover = 9 Neg cover = 5]
drug_interaction(A,B) :-
   category(B,'Alpha1 Antagonists'), category(A,'Antihypertensive Agents').

[Rule 46] [Pos cover = 10 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Amides'), category(A,'Anticonvulsants'), affected_organism(B,'Humans and other mammals').

[Rule 47] [Pos cover = 13 Neg cover = 2]
drug_interaction(A,B) :-
   target(A,'Gamma-aminobutyric acid receptor subunit alpha-1','Human'), target_polypeptide(B,'D(2) dopamine receptor','D(2) dopamine receptor','Potassium channel regulator activity').

[Rule 50] [Pos cover = 8 Neg cover = 4]
drug_interaction(A,B) :-
   target(B,'Gamma-aminobutyric acid receptor subunit alpha-1','Human'), target_action(A,'Muscarinic acetylcholine receptor M1',antagonist).

[Rule 51] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Adrenal Cortex Hormones'), target_action(B,'Prostaglandin G/H synthase 2',inhibitor).

[Rule 53] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'BCRP/ABCG2 Substrates'), target(A,'Glucocorticoid receptor','Human').

[Rule 54] [Pos cover = 28 Neg cover = 22]
drug_interaction(A,B) :-
   state(A,solid), category(B,'Adjuvants, Anesthesia'), category(A,'Chemical Actions and Uses'), affected_organism(A,'Humans and other mammals').

[Rule 57] [Pos cover = 35 Neg cover = 24]
drug_interaction(A,B) :-
   state(B,solid), class(A,'Benzothiazepines'), affected_organism(B,'Humans and other mammals').

[Rule 62] [Pos cover = 6 Neg cover = 4]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), affected_organism(A,'Gram negative and gram positive bacteria').

[Rule 73] [Pos cover = 9 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Amides'), affected_organism(B,'Humans and other mammals'), target(A,'Gamma-aminobutyric acid receptor subunit alpha-2','Human').

[Rule 79] [Pos cover = 6 Neg cover = 3]
drug_interaction(A,B) :-
   target(A,'Sodium channel protein type 5 subunit alpha','Human'), target_polypeptide(B,'D(3) dopamine receptor','D(3) dopamine receptor','G-protein coupled amine receptor activity').

[Rule 83] [Pos cover = 6 Neg cover = 4]
drug_interaction(A,B) :-
   category(A,'Acids, Heterocyclic'), target(B,'D(2) dopamine receptor','Human').

[Rule 84] [Pos cover = 8 Neg cover = 1]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Analgesics'), category(A,'Anticoagulants').

[Rule 86] [Pos cover = 35 Neg cover = 24]
drug_interaction(A,B) :-
   state(A,solid), class(B,'Benzothiazepines'), affected_organism(A,'Humans and other mammals').

[Rule 87] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(B,'Amino Acids, Peptides, and Analogues'), category(B,'Anti-Infective Agents'), category(A,'Anticoagulants').

[Rule 89] [Pos cover = 7 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Anticoagulants'), target(A,'Prothrombin','Human').

[Rule 95] [Pos cover = 21 Neg cover = 8]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), category(A,'Amides'), affected_organism(A,'Humans and other mammals').

[Rule 97] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Aminoglycosides'), affected_organism(B,'Gram-negative Bacteria').

[Rule 106] [Pos cover = 12 Neg cover = 6]
drug_interaction(A,B) :-
   category(B,'Amides'), affected_organism(B,'Humans and other mammals'), target_action(A,'Alpha-1A adrenergic receptor',antagonist).

[Rule 110] [Pos cover = 7 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Antimalarials'), category(A,'Azoles').

[Rule 112] [Pos cover = 10 Neg cover = 5]
drug_interaction(A,B) :-
   category(A,'Azoles'), target(B,'Sodium-dependent noradrenaline transporter','Human').

[Rule 119] [Pos cover = 14 Neg cover = 6]
drug_interaction(A,B) :-
   target(A,'Alpha-1A adrenergic receptor','Human'), target_polypeptide(B,'Alpha-1A adrenergic receptor','Alpha-1A adrenergic receptor','Protein heterodimerization activity').

[Rule 120] [Pos cover = 28 Neg cover = 23]
drug_interaction(A,B) :-
   state(A,solid), class(B,'Macrolides and analogues'), category(A,'Chemical Actions and Uses'), affected_organism(A,'Humans and other mammals').

[Rule 122] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   category(A,'BCRP/ABCG2 Substrates'), target(B,'Glucocorticoid receptor','Human').

[Rule 134] [Pos cover = 20 Neg cover = 0]
drug_interaction(A,B) :-
   target(A,'D(2) dopamine receptor','Human'), target_polypeptide(B,'D(2) dopamine receptor','D(2) dopamine receptor','Potassium channel regulator activity').

[Rule 135] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Anesthetics'), target(A,'D(2) dopamine receptor','Human').

[Rule 137] [Pos cover = 13 Neg cover = 2]
drug_interaction(A,B) :-
   target(B,'Gamma-aminobutyric acid receptor subunit alpha-1','Human'), target(A,'D(2) dopamine receptor','Human').

[Rule 140] [Pos cover = 7 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'BCRP/ABCG2 Substrates'), target(A,'5-hydroxytryptamine receptor 1A','Human').

[Rule 166] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Anticoagulants'), target_action(A,'Prostaglandin G/H synthase 2',inhibitor).

[Rule 167] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Adrenal Cortex Hormones'), target_action(A,'Prostaglandin G/H synthase 2',inhibitor).

[Rule 183] [Pos cover = 10 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Antineoplastic Agents'), property(B,'Hydrophobicity','-0.415').

[Rule 203] [Pos cover = 17 Neg cover = 3]
drug_interaction(A,B) :-
   target(A,'GABA-A receptor (anion channel)','Human'), target_polypeptide(B,'5-hydroxytryptamine receptor 1A','5-hydroxytryptamine receptor 1A','Serotonin receptor activity').

[Rule 215] [Pos cover = 6 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Aminoglycosides'), category(A,'Analgesics, Non-Narcotic').

[Rule 229] [Pos cover = 20 Neg cover = 10]
drug_interaction(A,B) :-
   category(B,'Amides'), category(A,'Amides'), affected_organism(B,'Humans and other mammals'), affected_organism(A,'Humans and other mammals').

[Rule 231] [Pos cover = 13 Neg cover = 5]
drug_interaction(A,B) :-
   category(A,'Amides'), affected_organism(A,'Humans and other mammals'), target(B,'Gamma-aminobutyric acid receptor subunit alpha-1','Human').

[Rule 259] [Pos cover = 12 Neg cover = 6]
drug_interaction(A,B) :-
   category(A,'Amides'), affected_organism(A,'Humans and other mammals'), target_action(B,'D(2) dopamine receptor',antagonist).

[Rule 261] [Pos cover = 6 Neg cover = 3]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Analgesics'), category(A,'Aminoglycosides').

[Rule 288] [Pos cover = 11 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Steroid lactones'), category(B,'Antineoplastic Agents').

[Rule 305] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Acids, Carbocyclic'), category(A,'Antihypertensive Agents').

[Rule 370] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(A,'Tetrazoles'), category(B,'Amides'), affected_organism(B,'Humans and other mammals').

[Rule 556] [Pos cover = 11 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Steroid lactones'), category(A,'Antineoplastic Agents').

[Training set performance]
            Actual
        +          -  
     + 511        224        735 
Pred 
     - 501        8664        9165 

       1012        8888        9900 

Accuracy = 0.9267676767676768
[Training set summary] [[511,224,501,8664]]
[Test set performance]
              Actual
         +            -   
     +  1962          3078          5040  
Pred 
     - 14766        140594        155360 

       16728        143672        160400 

Accuracy = 0.8887531172069826
[Test set summary] [[1962,3078,14766,140594]]
[time taken] [1371.791]
[total clauses constructed] [3706583]
true.
