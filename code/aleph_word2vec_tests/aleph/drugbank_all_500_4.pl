[theory]

[Rule 1] [Pos cover = 8 Neg cover = 3]
drug_interaction(A,B) :-
   category(A,'Alcohols'), category(A,'Amines'), target_action(B,'Beta-1 adrenergic receptor',antagonist).

[Rule 2] [Pos cover = 12 Neg cover = 2]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Analgesics'), target_action(A,'Beta-1 adrenergic receptor',antagonist).

[Rule 6] [Pos cover = 10 Neg cover = 0]
drug_interaction(A,B) :-
   target_action(A,'Beta-1 adrenergic receptor',antagonist), target_polypeptide(B,'Alpha-1A adrenergic receptor','Alpha-1A adrenergic receptor','Protein heterodimerization activity').

[Rule 8] [Pos cover = 12 Neg cover = 0]
drug_interaction(A,B) :-
   target_action(A,'Beta-1 adrenergic receptor',antagonist), target_polypeptide(B,'D(2) dopamine receptor','D(2) dopamine receptor','Potassium channel regulator activity').

[Rule 11] [Pos cover = 54 Neg cover = 32]
drug_interaction(A,B) :-
   state(A,solid), category(A,'Central Nervous System Agents'), target(B,'5-hydroxytryptamine receptor 2A','Human').

[Rule 12] [Pos cover = 53 Neg cover = 34]
drug_interaction(A,B) :-
   state(A,solid), category(B,'Anti-Anxiety Agents'), category(A,'Central Nervous System Agents').

[Rule 13] [Pos cover = 16 Neg cover = 9]
drug_interaction(A,B) :-
   class(B,'Morphinans'), category(A,'Central Nervous System Agents').

[Rule 14] [Pos cover = 14 Neg cover = 10]
drug_interaction(A,B) :-
   category(B,'Acetanilides'), category(A,'Central Nervous System Agents').

[Rule 15] [Pos cover = 14 Neg cover = 8]
drug_interaction(A,B) :-
   state(A,solid), category(B,'Adjuvants'), category(A,'Central Nervous System Agents').

[Rule 17] [Pos cover = 13 Neg cover = 8]
drug_interaction(A,B) :-
   state(A,solid), category(A,'Central Nervous System Agents'), property(B,logP,'5.54').

[Rule 18] [Pos cover = 12 Neg cover = 10]
drug_interaction(A,B) :-
   state(A,solid), subclass(B,'Imidazoles'), category(A,'Central Nervous System Agents').

[Rule 25] [Pos cover = 9 Neg cover = 5]
drug_interaction(A,B) :-
   state(A,solid), subclass(B,'Phenol ethers'), category(A,'Analgesics').

[Rule 26] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   target(A,'Dihydrofolate reductase','Human'), target_action(B,'Gamma-aminobutyric acid receptor subunit alpha-1',potentiator).

[Rule 35] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   target(B,'Dihydrofolate reductase','Human'), target(A,'Gamma-aminobutyric acid receptor subunit alpha-2','Human').

[Rule 37] [Pos cover = 12 Neg cover = 0]
drug_interaction(A,B) :-
   target_action(B,'Beta-1 adrenergic receptor',antagonist), target_polypeptide(A,'D(2) dopamine receptor','D(2) dopamine receptor','Potassium channel regulator activity').

[Rule 46] [Pos cover = 13 Neg cover = 10]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Central Nervous System Agents'), category(A,'Anti-Allergic Agents').

[Rule 48] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Hydroxysteroids'), property(A,'Melting Point','113-114').

[Rule 58] [Pos cover = 28 Neg cover = 0]
drug_interaction(A,B) :-
   state(A,solid), category(B,'Analgesics'), category(A,'Anti-Inflammatory Agents'), target(B,'Prostaglandin G/H synthase 1','Human').

[Rule 59] [Pos cover = 8 Neg cover = 0]
drug_interaction(A,B) :-
   state(A,solid), subclass(B,'Quinoline carboxylic acids'), category(A,'Anti-Inflammatory Agents').

[Rule 63] [Pos cover = 12 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Steroid lactones'), category(B,'Antineoplastic Agents').

[Rule 68] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Hydroxysteroids'), property(B,'Melting Point','113-114').

[Rule 80] [Pos cover = 8 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Antimalarials'), target_action(A,'D(2) dopamine receptor',antagonist).

[Rule 81] [Pos cover = 8 Neg cover = 3]
drug_interaction(A,B) :-
   state(B,solid), category(A,'Alpha1 Antagonists'), target(B,'D(2) dopamine receptor','Human').

[Rule 84] [Pos cover = 9 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Anti-Anxiety Agents'), category(A,'Alpha1 Antagonists').

[Rule 85] [Pos cover = 7 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Alkaloids'), target_action(A,'5-hydroxytryptamine receptor 2A',antagonist).

[Rule 90] [Pos cover = 7 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Adrenergic Agents'), category(A,'Adrenergic Agents'), target(A,'Alpha-1B adrenergic receptor','Human').

[Rule 94] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Tertiary amines'), category(A,'Analgesics, Non-Narcotic').

[Rule 95] [Pos cover = 10 Neg cover = 2]
drug_interaction(A,B) :-
   category(A,'Analgesics, Non-Narcotic'), property(B,logP,'-4.2').

[Rule 108] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(A,'Quinoline carboxylic acids'), category(B,'Analgesics, Non-Narcotic').

[Rule 124] [Pos cover = 8 Neg cover = 4]
drug_interaction(A,B) :-
   subclass(B,'Dibenzodiazepines'), category(A,'Antineoplastic Agents').

[Rule 140] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Antihistamines for Systemic Use'), category(A,'Anti-Anxiety Agents').

[Rule 163] [Pos cover = 13 Neg cover = 3]
drug_interaction(A,B) :-
   category(A,'Analgesics'), target(B,'Glucocorticoid receptor','Human'), target(A,'Prostaglandin G/H synthase 1','Human').

[Rule 171] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(B,'Aminosaccharides'), category(A,'Analgesics, Non-Narcotic').

[Rule 180] [Pos cover = 8 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Antimalarials'), target_action(B,'D(2) dopamine receptor',antagonist).

[Rule 183] [Pos cover = 11 Neg cover = 3]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Analgesics'), property(A,logP,'-4.2').

[Rule 198] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   state(B,solid), subclass(A,'Aminosaccharides'), category(B,'Analgesics').

[Rule 201] [Pos cover = 8 Neg cover = 4]
drug_interaction(A,B) :-
   subclass(A,'Dibenzodiazepines'), category(B,'Antineoplastic Agents').

[Rule 220] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Analgesics, Non-Narcotic'), property(A,'Hydrophobicity','-0.424').

[Rule 233] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(B,'Benzoxazolones'), target(A,'D(2) dopamine receptor','Human').

[Rule 263] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Anti-Allergic Agents'), target(A,'D(2) dopamine receptor','Human').

[Rule 281] [Pos cover = 12 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Steroid lactones'), category(A,'Antineoplastic Agents').

[Rule 388] [Pos cover = 7 Neg cover = 0]
drug_interaction(A,B) :-
   state(A,solid), category(A,'Anti-Inflammatory Agents'), property(B,'Water Solubility','Practically Insoluble').

[Rule 433] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   category(A,'Analgesics, Non-Narcotic'), property(B,'Hydrophobicity','-0.424').

[Training set performance]
            Actual
        +          -  
     + 465        169        634 
Pred 
     - 393        8411        8804 

       858        8580        9438 

Accuracy = 0.9404534859080314
[Training set summary] [[465,169,393,8411]]
[Test set performance]
              Actual
         +            -   
     +  2176          1298          3474  
Pred 
     - 15136        141790        156926 

       17312        143088        160400 

Accuracy = 0.8975436408977556
[Test set summary] [[2176,1298,15136,141790]]
[time taken] [1111.377]
[total clauses constructed] [2881434]
true.
