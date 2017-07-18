[theory]

[Rule 3] [Pos cover = 7 Neg cover = 5]
drug_interaction(A,B) :-
   category(B,'Amines'), category(A,'Alkaloids'), word2vec(B,C), category(C,'14-alpha Demethylase Inhibitors').

[Rule 6] [Pos cover = 14 Neg cover = 6]
drug_interaction(A,B) :-
   category(A,'Autonomic Agents'), target(B,'Sodium-dependent serotonin transporter','Human'), word2vec(A,C).

[Rule 7] [Pos cover = 11 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Adrenergic Agents'), word2vec(B,C), category(C,'Azaspirodecanedione Derivatives'), word2vec(A,D).

[Rule 8] [Pos cover = 33 Neg cover = 4]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), category(A,'Adrenergic Agents').

[Rule 9] [Pos cover = 16 Neg cover = 4]
drug_interaction(A,B) :-
   category(A,'Amides'), affected_organism(A,'Humans and other mammals'), target(B,'Sodium-dependent serotonin transporter','Human').

[Rule 10] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   target(A,'Aryl hydrocarbon receptor','Human'), word2vec(B,C), category(C,'14-alpha Demethylase Inhibitors').

[Rule 11] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Cardiovascular Agents'), target(A,'Aryl hydrocarbon receptor','Human'), word2vec(B,C), subclass(C,'Amino acids, peptides, and analogues').

[Rule 12] [Pos cover = 76 Neg cover = 9]
drug_interaction(A,B) :-
   category(B,'Central Nervous System Agents'), target(A,'Sodium-dependent serotonin transporter','Human').

[Rule 32] [Pos cover = 10 Neg cover = 2]
drug_interaction(A,B) :-
   state(B,solid), category(A,'Amines'), property(B,logP,'2.9'), target(A,'Sodium-dependent serotonin transporter','Human').

[Rule 33] [Pos cover = 6 Neg cover = 4]
drug_interaction(A,B) :-
   target(B,'Vitamin K epoxide reductase complex subunit 1','Human'), target(A,'Sodium-dependent serotonin transporter','Human').

[Rule 34] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   target(A,'Sodium-dependent serotonin transporter','Human'), word2vec(B,C), property(C,logP,'1').

[Rule 36] [Pos cover = 16 Neg cover = 4]
drug_interaction(A,B) :-
   target(A,'Sodium-dependent serotonin transporter','Human'), word2vec(B,C), subclass(C,'Piperazines'), target(C,'5-hydroxytryptamine receptor 1A','Human').

[Rule 38] [Pos cover = 7 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Benzene Derivatives'), target(A,'Sodium-dependent serotonin transporter','Human'), word2vec(B,C), class(C,'Benzodiazepines').

[Rule 39] [Pos cover = 13 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Amides'), category(B,'Amines'), target(A,'Sodium-dependent serotonin transporter','Human').

[Rule 46] [Pos cover = 6 Neg cover = 3]
drug_interaction(A,B) :-
   state(A,solid), property(B,logP,'3.2'), property(A,logP,'2.9').

[Rule 49] [Pos cover = 7 Neg cover = 2]
drug_interaction(A,B) :-
   state(A,solid), property(A,logP,'2.9'), target(B,'Mu-type opioid receptor','Human').

[Rule 50] [Pos cover = 9 Neg cover = 3]
drug_interaction(A,B) :-
   state(A,solid), category(B,'Alpha1 Antagonists'), property(A,logP,'2.9').

[Rule 53] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   state(A,solid), property(B,'Melting Point','191 °C'), property(A,logP,'2.9').

[Rule 55] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   state(A,solid), subclass(B,'Phenylpropylamines'), property(A,logP,'2.9').

[Rule 56] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   subclass(B,'Hydroxycoumarins'), affected_organism(A,'Enteric bacteria and other eubacteria').

[Rule 58] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Amides'), category(A,'Amines'), property(B,'Melting Point','191 °C').

[Rule 61] [Pos cover = 6 Neg cover = 4]
drug_interaction(A,B) :-
   subclass(A,'Benzenesulfonamides'), word2vec(B,C), target(C,'Sodium-dependent noradrenaline transporter','Human').

[Rule 63] [Pos cover = 7 Neg cover = 5]
drug_interaction(A,B) :-
   state(A,solid), subclass(B,'Piperazines'), word2vec(A,C), category(C,'Anti-Allergic Agents').

[Rule 65] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   class(B,'Yohimbine alkaloids'), affected_organism(A,'Humans and other mammals'), word2vec(A,C), category(C,'Acids, Heterocyclic').

[Rule 66] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Antineoplastic Agents'), category(A,'Alpha1 Antagonists'), word2vec(B,C), class(C,'Benzocycloheptapyridines').

[Rule 67] [Pos cover = 7 Neg cover = 1]
drug_interaction(A,B) :-
   category(A,'Alpha1 Antagonists'), property(B,'Melting Point','191 °C').

[Rule 72] [Pos cover = 21 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Central Nervous System Agents'), target(A,'D(2) dopamine receptor','Human'), target_polypeptide(A,'5-hydroxytryptamine receptor 2A','5-hydroxytryptamine receptor 2A','Virus receptor activity'), word2vec(B,C).

[Rule 73] [Pos cover = 27 Neg cover = 24]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Chemical Actions and Uses'), category(A,'Acids'), affected_organism(B,'Humans and other mammals').

[Rule 85] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Acids'), target(A,'Sodium-dependent serotonin transporter','Human').

[Rule 86] [Pos cover = 24 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Central Nervous System Depressants'), category(A,'Adrenergic Uptake Inhibitors').

[Rule 91] [Pos cover = 10 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Steroid lactones'), category(B,'Antineoplastic Agents').

[Rule 104] [Pos cover = 9 Neg cover = 1]
drug_interaction(A,B) :-
   target(B,'Sodium-dependent serotonin transporter','Human'), word2vec(A,C), property(C,'Melting Point','180-181 °C').

[Rule 105] [Pos cover = 24 Neg cover = 11]
drug_interaction(A,B) :-
   category(B,'Central Nervous System Agents'), word2vec(A,C), property(C,'Melting Point','180-181 °C').

[Rule 116] [Pos cover = 29 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Adrenergic Agents'), category(A,'Antihypertensive Agents'), word2vec(B,C).

[Rule 118] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   category(A,'Acids, Heterocyclic'), target(B,'Sodium-dependent serotonin transporter','Human').

[Rule 119] [Pos cover = 76 Neg cover = 9]
drug_interaction(A,B) :-
   category(A,'Central Nervous System Agents'), target(B,'Sodium-dependent serotonin transporter','Human').

[Rule 120] [Pos cover = 12 Neg cover = 0]
drug_interaction(A,B) :-
   class(B,'Morphinans'), category(A,'Central Nervous System Agents'), word2vec(A,C).

[Rule 121] [Pos cover = 29 Neg cover = 5]
drug_interaction(A,B) :-
   category(A,'Central Nervous System Agents'), target(B,'D(2) dopamine receptor','Human'), target_polypeptide(B,'5-hydroxytryptamine receptor 2A','5-hydroxytryptamine receptor 2A','Virus receptor activity').

[Rule 122] [Pos cover = 14 Neg cover = 3]
drug_interaction(A,B) :-
   class(B,'Yohimbine alkaloids'), category(A,'Central Nervous System Agents').

[Rule 123] [Pos cover = 28 Neg cover = 6]
drug_interaction(A,B) :-
   category(A,'Central Nervous System Agents'), target(B,'Gamma-aminobutyric acid receptor subunit alpha-2','Human'), word2vec(B,C), target(C,'GABA-A receptor (anion channel)','Human').

[Rule 124] [Pos cover = 11 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(B,'Benzophenones'), category(A,'Central Nervous System Agents'), word2vec(A,C).

[Rule 129] [Pos cover = 10 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Alpha1 Antagonists'), target_action(A,'Potassium voltage-gated channel subfamily H member 2',inhibitor).

[Rule 131] [Pos cover = 9 Neg cover = 3]
drug_interaction(A,B) :-
   target(A,'Potassium voltage-gated channel subfamily H member 2','Human'), word2vec(B,C), subclass(C,'Piperazines'), category(C,'Alpha1 Antagonists').

[Rule 136] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   state(A,solid), class(B,'Morphinans'), word2vec(A,C), target_action(C,'D(2) dopamine receptor',antagonist).

[Rule 141] [Pos cover = 25 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Alimentary Tract and Metabolism'), category(B,'Analgesics'), category(A,'Central Nervous System Depressants').

[Rule 142] [Pos cover = 138 Neg cover = 9]
drug_interaction(A,B) :-
   category(B,'Central Nervous System Agents'), category(A,'Central Nervous System Depressants'), word2vec(B,C).

[Rule 149] [Pos cover = 12 Neg cover = 5]
drug_interaction(A,B) :-
   state(B,solid), property(A,'Melting Point','191 °C'), word2vec(B,C), target(C,'5-hydroxytryptamine receptor 2A','Human').

[Rule 150] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   property(A,'Melting Point','191 °C'), target(B,'Mu-type opioid receptor','Human').

[Rule 156] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   state(B,solid), category(A,'Alimentary Tract and Metabolism'), category(A,'Analgesics'), property(B,logP,'2.9').

[Rule 164] [Pos cover = 12 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Amines'), category(B,'Antidepressive Agents'), target_polypeptide(A,'Potassium voltage-gated channel subfamily H member 2','Potassium voltage-gated channel subfamily H member 2','Voltage-gated potassium channel activity involved in ventricular cardiac muscle cell action potential repolarization').

[Rule 231] [Pos cover = 21 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), word2vec(A,C), category(C,'Azaspirodecanedione Derivatives').

[Rule 237] [Pos cover = 56 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), category(A,'Antihypertensive Agents').

[Rule 243] [Pos cover = 6 Neg cover = 1]
drug_interaction(A,B) :-
   state(B,solid), class(A,'Morphinans'), category(B,'Antihypertensive Agents').

[Rule 252] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   subclass(A,'Hydroxycoumarins'), affected_organism(B,'Enteric bacteria and other eubacteria').

[Rule 253] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Hydroxycoumarins'), target(B,'Sodium-dependent serotonin transporter','Human').

[Rule 293] [Pos cover = 9 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(A,'Benzenesulfonamides'), target(B,'Sodium-dependent serotonin transporter','Human').

[Rule 317] [Pos cover = 9 Neg cover = 3]
drug_interaction(A,B) :-
   state(A,solid), category(B,'Acids'), word2vec(A,C), target(C,'5-hydroxytryptamine receptor 1A','Human').

[Rule 342] [Pos cover = 10 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Steroid lactones'), category(A,'Antineoplastic Agents').

[Rule 387] [Pos cover = 15 Neg cover = 3]
drug_interaction(A,B) :-
   subclass(B,'Pheniramines'), category(A,'Central Nervous System Agents').

[Rule 393] [Pos cover = 15 Neg cover = 5]
drug_interaction(A,B) :-
   category(A,'Central Nervous System Agents'), property(B,'Melting Point','191 °C'), word2vec(A,C), word2vec(C,A), 
   state(A,solid).

[Rule 447] [Pos cover = 5 Neg cover = 2]
drug_interaction(A,B) :-
   subclass(B,'Anilines'), word2vec(A,C), word2vec(C,D), target(D,'Sodium-dependent serotonin transporter','Human').

[Training set performance]
            Actual
        +          -  
     + 629        165        794 
Pred 
     - 413        8693        9106 

       1042        8858        9900 

Accuracy = 0.9416161616161616
[Training set summary] [[629,165,413,8693]]
[Test set performance]
              Actual
         +            -   
     +  3655          3933          7588  
Pred 
     - 12793        140019        152812 

       16448        143952        160400 

Accuracy = 0.8957231920199501
[Test set summary] [[3655,3933,12793,140019]]
[time taken] [30621.59]
[total clauses constructed] [4527031]
true.
