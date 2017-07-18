[theory]

[Rule 6] [Pos cover = 18 Neg cover = 12]
drug_interaction(A,B) :-
   category(A,'Alkaloids'), target(B,'Sodium-dependent serotonin transporter','Human').

[Rule 7] [Pos cover = 6 Neg cover = 4]
drug_interaction(A,B) :-
   category(B,'Acids, Carbocyclic'), category(B,'Amides'), category(A,'Adrenergic Agents').

[Rule 8] [Pos cover = 33 Neg cover = 4]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), category(A,'Adrenergic Agents').

[Rule 9] [Pos cover = 18 Neg cover = 6]
drug_interaction(A,B) :-
   category(A,'Adrenergic Agents'), target(B,'Sodium-dependent serotonin transporter','Human').

[Rule 10] [Pos cover = 16 Neg cover = 4]
drug_interaction(A,B) :-
   category(A,'Amides'), affected_organism(A,'Humans and other mammals'), target(B,'Sodium-dependent serotonin transporter','Human').

[Rule 13] [Pos cover = 76 Neg cover = 9]
drug_interaction(A,B) :-
   category(B,'Central Nervous System Agents'), target(A,'Sodium-dependent serotonin transporter','Human').

[Rule 33] [Pos cover = 13 Neg cover = 2]
drug_interaction(A,B) :-
   state(B,solid), property(B,logP,'2.9'), target(A,'Sodium-dependent serotonin transporter','Human').

[Rule 34] [Pos cover = 6 Neg cover = 4]
drug_interaction(A,B) :-
   target(B,'Vitamin K epoxide reductase complex subunit 1','Human'), target(A,'Sodium-dependent serotonin transporter','Human').

[Rule 37] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Acids, Heterocyclic'), target(A,'Sodium-dependent serotonin transporter','Human').

[Rule 38] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Adrenergic alpha-1 Receptor Antagonists'), category(A,'Amines'), target(A,'Sodium-dependent serotonin transporter','Human').

[Rule 41] [Pos cover = 13 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Amides'), category(B,'Amines'), target(A,'Sodium-dependent serotonin transporter','Human').

[Rule 47] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   target_action(B,'Mu-type opioid receptor',agonist), target_action(A,'D(2) dopamine receptor',antagonist).

[Rule 49] [Pos cover = 6 Neg cover = 3]
drug_interaction(A,B) :-
   state(A,solid), property(B,logP,'3.2'), property(A,logP,'2.9').

[Rule 52] [Pos cover = 7 Neg cover = 2]
drug_interaction(A,B) :-
   state(A,solid), property(A,logP,'2.9'), target(B,'Mu-type opioid receptor','Human').

[Rule 53] [Pos cover = 9 Neg cover = 3]
drug_interaction(A,B) :-
   state(A,solid), category(B,'Alpha1 Antagonists'), property(A,logP,'2.9').

[Rule 56] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   state(A,solid), property(B,'Melting Point','191 °C'), property(A,logP,'2.9').

[Rule 58] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   state(A,solid), subclass(B,'Phenylpropylamines'), property(A,logP,'2.9').

[Rule 59] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   subclass(B,'Hydroxycoumarins'), affected_organism(A,'Enteric bacteria and other eubacteria').

[Rule 61] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Amides'), category(A,'Amines'), property(B,'Melting Point','191 °C').

[Rule 65] [Pos cover = 9 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(A,'Benzenesulfonamides'), target(B,'Sodium-dependent serotonin transporter','Human').

[Rule 71] [Pos cover = 7 Neg cover = 1]
drug_interaction(A,B) :-
   category(A,'Alpha1 Antagonists'), property(B,'Melting Point','191 °C').

[Rule 76] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   category(A,'Antiemetics'), target(B,'Sodium-dependent serotonin transporter','Human').

[Rule 77] [Pos cover = 29 Neg cover = 5]
drug_interaction(A,B) :-
   category(B,'Central Nervous System Agents'), target(A,'D(2) dopamine receptor','Human'), target_polypeptide(A,'5-hydroxytryptamine receptor 2A','5-hydroxytryptamine receptor 2A','Virus receptor activity').

[Rule 78] [Pos cover = 27 Neg cover = 24]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Chemical Actions and Uses'), category(A,'Acids'), affected_organism(B,'Humans and other mammals').

[Rule 90] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Acids'), target(A,'Sodium-dependent serotonin transporter','Human').

[Rule 91] [Pos cover = 24 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Central Nervous System Depressants'), category(A,'Adrenergic Uptake Inhibitors').

[Rule 95] [Pos cover = 10 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Steroid lactones'), category(B,'Antineoplastic Agents').

[Rule 109] [Pos cover = 10 Neg cover = 6]
drug_interaction(A,B) :-
   state(B,solid), subclass(A,'Tetrazoles'), category(B,'Central Nervous System Agents').

[Rule 120] [Pos cover = 33 Neg cover = 4]
drug_interaction(A,B) :-
   category(B,'Adrenergic Agents'), category(A,'Antihypertensive Agents').

[Rule 121] [Pos cover = 11 Neg cover = 9]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Amines'), category(A,'Acids, Heterocyclic').

[Rule 124] [Pos cover = 56 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), category(A,'Antihypertensive Agents').

[Rule 125] [Pos cover = 76 Neg cover = 9]
drug_interaction(A,B) :-
   category(A,'Central Nervous System Agents'), target(B,'Sodium-dependent serotonin transporter','Human').

[Rule 126] [Pos cover = 15 Neg cover = 2]
drug_interaction(A,B) :-
   class(B,'Morphinans'), category(A,'Central Nervous System Agents').

[Rule 127] [Pos cover = 29 Neg cover = 5]
drug_interaction(A,B) :-
   category(A,'Central Nervous System Agents'), target(B,'D(2) dopamine receptor','Human'), target_polypeptide(B,'5-hydroxytryptamine receptor 2A','5-hydroxytryptamine receptor 2A','Virus receptor activity').

[Rule 128] [Pos cover = 14 Neg cover = 3]
drug_interaction(A,B) :-
   class(B,'Yohimbine alkaloids'), category(A,'Central Nervous System Agents').

[Rule 129] [Pos cover = 14 Neg cover = 3]
drug_interaction(A,B) :-
   subclass(B,'1,4-benzodiazepines'), category(A,'Central Nervous System Agents').

[Rule 130] [Pos cover = 14 Neg cover = 3]
drug_interaction(A,B) :-
   subclass(B,'Benzophenones'), category(A,'Central Nervous System Agents').

[Rule 131] [Pos cover = 14 Neg cover = 3]
drug_interaction(A,B) :-
   subclass(B,'Imidazoles'), category(A,'Central Nervous System Agents').

[Rule 136] [Pos cover = 10 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Alpha1 Antagonists'), target_action(A,'Potassium voltage-gated channel subfamily H member 2',inhibitor).

[Rule 150] [Pos cover = 25 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Alimentary Tract and Metabolism'), category(B,'Analgesics'), category(A,'Central Nervous System Depressants').

[Rule 151] [Pos cover = 15 Neg cover = 3]
drug_interaction(A,B) :-
   subclass(A,'Pheniramines'), category(B,'Central Nervous System Agents').

[Rule 158] [Pos cover = 21 Neg cover = 11]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Central Nervous System Agents'), property(A,'Melting Point','191 °C').

[Rule 161] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   category(A,'Analgesics'), property(B,'Melting Point','191 °C').

[Rule 163] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   state(B,solid), category(A,'Alimentary Tract and Metabolism'), category(A,'Analgesics'), property(B,logP,'2.9').

[Rule 172] [Pos cover = 6 Neg cover = 3]
drug_interaction(A,B) :-
   state(B,solid), property(B,logP,'2.9'), target_action(A,'Potassium voltage-gated channel subfamily H member 2',inhibitor).

[Rule 179] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Amides'), category(B,'Amines'), property(A,'Melting Point','191 °C').

[Rule 248] [Pos cover = 6 Neg cover = 1]
drug_interaction(A,B) :-
   state(B,solid), class(A,'Morphinans'), category(B,'Antihypertensive Agents').

[Rule 253] [Pos cover = 12 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Amides'), category(A,'Amines'), category(A,'Antidepressive Agents'), affected_organism(B,'Humans and other mammals').

[Rule 258] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   subclass(A,'Hydroxycoumarins'), affected_organism(B,'Enteric bacteria and other eubacteria').

[Rule 259] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Hydroxycoumarins'), target(B,'Sodium-dependent serotonin transporter','Human').

[Rule 330] [Pos cover = 6 Neg cover = 1]
drug_interaction(A,B) :-
   state(A,solid), category(B,'Acids'), category(A,'Antihypertensive Agents').

[Rule 349] [Pos cover = 10 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Steroid lactones'), category(A,'Antineoplastic Agents').

[Rule 398] [Pos cover = 15 Neg cover = 3]
drug_interaction(A,B) :-
   subclass(B,'Pheniramines'), category(A,'Central Nervous System Agents').

[Rule 415] [Pos cover = 6 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Anti-Acne Preparations'), category(A,'Amines'), category(A,'Antidepressive Agents').

[Rule 488] [Pos cover = 14 Neg cover = 3]
drug_interaction(A,B) :-
   category(A,'Central Nervous System Agents'), property(B,'Water Solubility','2090 mg/L').

[Training set performance]
            Actual
        +          -  
     + 605        171        776 
Pred 
     - 437        8687        9124 

       1042        8858        9900 

Accuracy = 0.9385858585858586
[Training set summary] [[605,171,437,8687]]
[Test set performance]
              Actual
         +            -   
     +  3013          3410          6423  
Pred 
     - 13435        140542        153977 

       16448        143952        160400 

Accuracy = 0.8949812967581048
[Test set summary] [[3013,3410,13435,140542]]
[time taken] [1250.991]
[total clauses constructed] [3260744]
true.
