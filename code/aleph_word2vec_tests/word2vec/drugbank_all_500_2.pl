[theory]

[Rule 2] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Antiemetics'), target_polypeptide(A,'Adenosine receptor A2a','Adenosine receptor A2a','Identical protein binding').

[Rule 3] [Pos cover = 8 Neg cover = 4]
drug_interaction(A,B) :-
   target_polypeptide(A,'Adenosine receptor A2a','Adenosine receptor A2a','Identical protein binding'), word2vec(B,C), category(C,'Anti-Anxiety Agents').

[Rule 4] [Pos cover = 6 Neg cover = 3]
drug_interaction(A,B) :-
   target_polypeptide(A,'Adenosine receptor A2a','Adenosine receptor A2a','Identical protein binding'), word2vec(B,C), category(C,'Antimetabolites'), property(C,'Water Solubility','Soluble').

[Rule 7] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Adrenergic Antagonists'), category(A,'Agents Acting on the Renin-Angiotensin System').

[Rule 11] [Pos cover = 8 Neg cover = 4]
drug_interaction(A,B) :-
   category(A,'Agents Acting on the Renin-Angiotensin System'), word2vec(B,C), category(C,'Antineoplastic Agents, Hormonal').

[Rule 13] [Pos cover = 7 Neg cover = 5]
drug_interaction(A,B) :-
   category(B,'Analgesics'), category(A,'Agents Acting on the Renin-Angiotensin System').

[Rule 14] [Pos cover = 11 Neg cover = 3]
drug_interaction(A,B) :-
   category(A,'Agents Acting on the Renin-Angiotensin System'), word2vec(B,C), target(C,'Sodium-dependent serotonin transporter','Human').

[Rule 22] [Pos cover = 6 Neg cover = 3]
drug_interaction(A,B) :-
   subclass(B,'1-benzopyrans'), word2vec(A,C), category(C,'Anticonvulsants').

[Rule 23] [Pos cover = 6 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(B,'Triterpenoids'), word2vec(A,C), target(C,'Sodium channel protein type 1 subunit alpha','Human').

[Rule 25] [Pos cover = 7 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Sulfinylbenzimidazoles'), word2vec(A,C), target(C,'Sodium channel protein type 1 subunit alpha','Human').

[Rule 27] [Pos cover = 10 Neg cover = 2]
drug_interaction(A,B) :-
   target_polypeptide(B,'Adenosine receptor A2a','Adenosine receptor A2a','Identical protein binding'), word2vec(A,C), target(C,'Sodium channel protein type 1 subunit alpha','Human').

[Rule 28] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(B,'Indanones'), affected_organism(A,'Enteric bacteria and other eubacteria').

[Rule 30] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   state(A,solid), category(B,'Anesthetics'), word2vec(A,C), category(C,'Anticonvulsants').

[Rule 31] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   state(A,solid), category(B,'Adjuvants'), word2vec(A,C), category(C,'Anticonvulsants').

[Rule 32] [Pos cover = 8 Neg cover = 4]
drug_interaction(A,B) :-
   category(A,'Alimentary Tract and Metabolism'), property(B,'Water Solubility','77 mg/L (at 25 °C)'), word2vec(A,C), state(C,solid).

[Rule 33] [Pos cover = 7 Neg cover = 5]
drug_interaction(A,B) :-
   target(B,'Potassium voltage-gated channel subfamily H member 2','Human'), word2vec(A,C), target(C,'Sodium channel protein type 1 subunit alpha','Human').

[Rule 35] [Pos cover = 9 Neg cover = 3]
drug_interaction(A,B) :-
   state(B,solid), class(A,'Benzodiazepines'), category(B,'Alimentary Tract and Metabolism'), word2vec(B,C).

[Rule 36] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   target(A,'D(2) dopamine receptor','Human'), word2vec(B,C), category(C,'Anti-Anxiety Agents').

[Rule 38] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   state(A,solid), category(B,'Anesthetics'), word2vec(A,C), target(C,'Histamine H1 receptor','Human').

[Rule 39] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   state(A,solid), category(B,'Adjuvants'), word2vec(A,C), target(C,'Histamine H1 receptor','Human').

[Rule 42] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   category(A,'Antiemetics'), target(B,'Adenosine receptor A2a','Human').

[Rule 50] [Pos cover = 19 Neg cover = 8]
drug_interaction(A,B) :-
   category(B,'Agents Acting on the Renin-Angiotensin System'), category(A,'Cardiovascular System'), word2vec(A,C).

[Rule 51] [Pos cover = 7 Neg cover = 4]
drug_interaction(A,B) :-
   state(A,solid), property(B,'Water Solubility','451 mg/L'), word2vec(A,C), category(C,'Antihypertensive Agents').

[Rule 53] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(A,'Analgesics, Non-Narcotic'), word2vec(B,C), target(C,'Sodium channel protein type 1 subunit alpha','Human').

[Rule 55] [Pos cover = 7 Neg cover = 5]
drug_interaction(A,B) :-
   subclass(B,'Phenol ethers'), category(A,'Analgesics').

[Rule 62] [Pos cover = 8 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Amino Acids'), category(A,'Analgesics'), word2vec(B,C).

[Rule 63] [Pos cover = 12 Neg cover = 4]
drug_interaction(A,B) :-
   category(B,'Analgesics'), word2vec(A,C), category(C,'Calcium Channel Blockers').

[Rule 68] [Pos cover = 7 Neg cover = 0]
drug_interaction(A,B) :-
   target(B,'D(2) dopamine receptor','Human'), word2vec(A,C), category(C,'Calcium Channel Blockers').

[Rule 76] [Pos cover = 11 Neg cover = 1]
drug_interaction(A,B) :-
   category(A,'Anti-Anxiety Agents'), word2vec(B,C), category(C,'Anti-Parkinson Agents (Dopamine Agonist)').

[Rule 83] [Pos cover = 6 Neg cover = 4]
drug_interaction(A,B) :-
   category(B,'14-alpha Demethylase Inhibitors'), word2vec(A,C), category(C,'Anticonvulsants'), category(C,'Azoles').

[Rule 86] [Pos cover = 8 Neg cover = 3]
drug_interaction(A,B) :-
   class(B,'Benzodiazepines'), category(A,'Alimentary Tract and Metabolism'), affected_organism(A,'Humans and other mammals'), word2vec(A,C).

[Rule 90] [Pos cover = 7 Neg cover = 5]
drug_interaction(A,B) :-
   category(A,'Anesthetics'), word2vec(B,C), word2vec(C,D), category(D,'Acids, Acyclic').

[Rule 95] [Pos cover = 9 Neg cover = 7]
drug_interaction(A,B) :-
   category(A,'Amides'), word2vec(B,C), target(C,'Sodium channel protein type 1 subunit alpha','Human').

[Rule 112] [Pos cover = 12 Neg cover = 4]
drug_interaction(A,B) :-
   category(A,'Analgesics'), target(B,'GABA-A receptor (anion channel)','Human').

[Rule 120] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   state(B,solid), property(A,'Water Solubility','451 mg/L'), word2vec(B,C), category(C,'Adrenergic Agents').

[Rule 121] [Pos cover = 9 Neg cover = 1]
drug_interaction(A,B) :-
   superclass(B,'Alkaloids and derivatives'), word2vec(A,C), target(C,'Sodium-dependent serotonin transporter','Human').

[Rule 125] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Adrenergic Agonists'), category(A,'Adrenergic Agents'), word2vec(A,C), category(C,'Amino Acids, Peptides, and Proteins').

[Rule 130] [Pos cover = 16 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Cardiovascular System'), category(A,'Adrenergic Antagonists'), word2vec(B,C).

[Rule 137] [Pos cover = 7 Neg cover = 2]
drug_interaction(A,B) :-
   target(B,'Histamine H1 receptor','Human'), target(A,'Sodium-dependent noradrenaline transporter','Human').

[Rule 145] [Pos cover = 6 Neg cover = 4]
drug_interaction(A,B) :-
   subclass(B,'Benzenesulfonamides'), word2vec(A,C), target(C,'Sodium-dependent serotonin transporter','Human').

[Rule 173] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   target(B,'Carbonic anhydrase 1','Human'), target(A,'GABA-A receptor (anion channel)','Human').

[Rule 175] [Pos cover = 8 Neg cover = 4]
drug_interaction(A,B) :-
   category(A,'Adjuvants'), word2vec(B,C), word2vec(C,D), category(D,'Acids, Acyclic').

[Rule 183] [Pos cover = 9 Neg cover = 2]
drug_interaction(A,B) :-
   state(A,solid), target(B,'D(2) dopamine receptor','Human'), word2vec(A,C), target(C,'5-hydroxytryptamine receptor 1D','Human').

[Rule 186] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   target(B,'Sodium-dependent serotonin transporter','Human'), target(A,'Histamine H1 receptor','Human').

[Rule 187] [Pos cover = 11 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Anti-Anxiety Agents'), word2vec(A,C), category(C,'Anti-Parkinson Agents (Dopamine Agonist)').

[Rule 195] [Pos cover = 7 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(B,'Sulfinylbenzimidazoles'), word2vec(A,C), property(C,'Melting Point','191 °C').

[Rule 210] [Pos cover = 12 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Anti-Anxiety Agents'), category(A,'Anti-Anxiety Agents').

[Rule 226] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Blood Glucose Lowering Agents'), target(B,'DNA topoisomerase 4 subunit A','Haemophilus influenzae (strain ATCC 51907 / DSM 11121 / KW20 / Rd)').

[Rule 227] [Pos cover = 8 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Azoles'), category(A,'Blood Glucose Lowering Agents').

[Rule 246] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(A,'Indanones'), affected_organism(B,'Enteric bacteria and other eubacteria').

[Rule 255] [Pos cover = 7 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Sulfinylbenzimidazoles'), word2vec(B,C), target(C,'Sodium channel protein type 1 subunit alpha','Human').

[Rule 257] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(A,'2-Pyridinylmethylsulfinylbenzimidazoles'), word2vec(B,C), word2vec(C,D), target_action(D,'Potassium voltage-gated channel subfamily H member 2',inhibitor).

[Rule 269] [Pos cover = 11 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Steroid lactones'), category(B,'Antineoplastic Agents').

[Rule 280] [Pos cover = 8 Neg cover = 0]
drug_interaction(A,B) :-
   superclass(A,'Alkaloids and derivatives'), word2vec(B,C), target(C,'Sodium channel protein type 1 subunit alpha','Human').

[Rule 338] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   state(B,solid), category(A,'Anesthetics'), word2vec(B,C), target(C,'Histamine H1 receptor','Human').

[Rule 339] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   state(B,solid), category(A,'Adjuvants'), word2vec(B,C), target(C,'Histamine H1 receptor','Human').

[Rule 542] [Pos cover = 11 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Steroid lactones'), category(A,'Antineoplastic Agents').

[Training set performance]
            Actual
        +          -  
     + 385        134        519 
Pred 
     - 517        8864        9381 

       902        8998        9900 

Accuracy = 0.9342424242424242
[Training set summary] [[385,134,517,8864]]
[Test set performance]
              Actual
         +            -   
     +  1949          3338          5287  
Pred 
     - 14851        140262        155113 

       16800        143600        160400 

Accuracy = 0.8866022443890275
[Test set summary] [[1949,3338,14851,140262]]
[time taken] [19057.278]
[total clauses constructed] [5490506]
true.
