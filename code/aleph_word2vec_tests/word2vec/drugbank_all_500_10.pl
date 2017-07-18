[theory]

[Rule 1] [Pos cover = 15 Neg cover = 0]
drug_interaction(A,B) :-
   target(A,'Mu-type opioid receptor','Human'), target_action(B,'D(2) dopamine receptor',antagonist).

[Rule 2] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Acids, Acyclic'), target(A,'Mu-type opioid receptor','Human').

[Rule 3] [Pos cover = 14 Neg cover = 0]
drug_interaction(A,B) :-
   target(A,'Mu-type opioid receptor','Human'), target_polypeptide(B,'Sodium-dependent serotonin transporter','Sodium-dependent serotonin transporter','Serotonin:sodium symporter activity').

[Rule 4] [Pos cover = 13 Neg cover = 7]
drug_interaction(A,B) :-
   category(A,'Adrenal Cortex Hormones'), word2vec(B,C), category(C,'Adrenergic Uptake Inhibitors').

[Rule 5] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Amines'), category(A,'Adrenal Cortex Hormones'), word2vec(B,C), category(C,'Alpha1 Antagonists').

[Rule 6] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   property(B,'Melting Point','71 °C (whole mAb)'), target(A,'Glucocorticoid receptor','Human').

[Rule 7] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   target_action(B,'Muscarinic acetylcholine receptor M2',antagonist), target_action(A,'Glucocorticoid receptor',agonist), word2vec(B,C).

[Rule 8] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   class(B,'Quinolines and derivatives'), category(A,'Adrenal Cortex Hormones').

[Rule 9] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   property(B,'Water Solubility','0.84 g/L at 20°C'), target(A,'Glucocorticoid receptor','Human').

[Rule 19] [Pos cover = 8 Neg cover = 1]
drug_interaction(A,B) :-
   target_action(B,'Sodium-dependent serotonin transporter',inhibitor), word2vec(A,C), category(C,'Acids').

[Rule 20] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   target(B,'Peroxisome proliferator-activated receptor gamma','Human'), word2vec(A,C), class(C,'Macrolides and analogues').

[Rule 22] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   superclass(B,'Alkaloids and derivatives'), word2vec(A,C), class(C,'Macrolides and analogues').

[Rule 24] [Pos cover = 11 Neg cover = 5]
drug_interaction(A,B) :-
   state(A,solid), target_action(B,'D(1A) dopamine receptor',antagonist), word2vec(A,C), target_action(C,'Sodium-dependent serotonin transporter',inhibitor).

[Rule 25] [Pos cover = 7 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(B,'Fatty acids and conjugates'), word2vec(A,C), class(C,'Macrolides and analogues').

[Rule 26] [Pos cover = 31 Neg cover = 20]
drug_interaction(A,B) :-
   state(A,solid), property(B,'Water Solubility','572 mg/ml (Hydrochloride salt)'), word2vec(A,C), state(C,solid).

[Rule 27] [Pos cover = 10 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Acids, Acyclic'), target(B,'D(2) dopamine receptor','Human').

[Rule 28] [Pos cover = 9 Neg cover = 4]
drug_interaction(A,B) :-
   state(A,solid), subclass(B,'Diphenylmethanes'), word2vec(A,C), category(C,'Antihypertensive Agents').

[Rule 29] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   property(A,'Melting Point','71 °C (whole mAb)'), target(B,'Glucocorticoid receptor','Human').

[Rule 32] [Pos cover = 5 Neg cover = 2]
drug_interaction(A,B) :-
   subclass(B,'Benzothiadiazines'), category(A,'Analgesics').

[Rule 36] [Pos cover = 6 Neg cover = 3]
drug_interaction(A,B) :-
   class(B,'Quinolines and derivatives'), category(A,'Amines'), affected_organism(A,'Humans and other mammals'), word2vec(A,C).

[Rule 37] [Pos cover = 15 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Analgesics, Opioid'), target(A,'Muscarinic acetylcholine receptor M2','Human').

[Rule 38] [Pos cover = 7 Neg cover = 2]
drug_interaction(A,B) :-
   subclass(B,'Benzothiadiazines'), category(A,'Amines'), affected_organism(A,'Humans and other mammals'), word2vec(A,C).

[Rule 39] [Pos cover = 7 Neg cover = 3]
drug_interaction(A,B) :-
   superclass(B,'Alkaloids and derivatives'), subclass(A,'Phenol ethers').

[Rule 41] [Pos cover = 17 Neg cover = 9]
drug_interaction(A,B) :-
   target(B,'D(2) dopamine receptor','Human'), target(A,'Muscarinic acetylcholine receptor M2','Human').

[Rule 42] [Pos cover = 76 Neg cover = 10]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Central Nervous System Agents'), target(A,'Alpha-2B adrenergic receptor','Human').

[Rule 43] [Pos cover = 75 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Central Nervous System Depressants'), target(A,'Alpha-2B adrenergic receptor','Human').

[Rule 44] [Pos cover = 6 Neg cover = 4]
drug_interaction(A,B) :-
   category(B,'Adrenergic Agents'), target(A,'Alpha-2A adrenergic receptor','Human'), word2vec(B,C), subclass(C,'Phenylbutylamines').

[Rule 47] [Pos cover = 5 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), word2vec(A,C), category(C,'Anticoagulants').

[Rule 48] [Pos cover = 14 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Antidepressive Agents'), target(B,'D(2) dopamine receptor','Human').

[Rule 49] [Pos cover = 14 Neg cover = 0]
drug_interaction(A,B) :-
   target(B,'Mu-type opioid receptor','Human'), target(A,'Sodium-dependent serotonin transporter','Human').

[Rule 50] [Pos cover = 47 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Central Nervous System Depressants'), category(A,'Antidepressive Agents').

[Rule 51] [Pos cover = 18 Neg cover = 1]
drug_interaction(A,B) :-
   target(B,'5-hydroxytryptamine receptor 1D','Human'), target(A,'Sodium-dependent serotonin transporter','Human').

[Rule 52] [Pos cover = 8 Neg cover = 4]
drug_interaction(A,B) :-
   category(A,'Antidepressive Agents'), property(B,'Water Solubility','Soluble'), target(A,'Sodium-dependent serotonin transporter','Human').

[Rule 53] [Pos cover = 16 Neg cover = 8]
drug_interaction(A,B) :-
   category(A,'Antidepressive Agents'), word2vec(B,C), target(C,'D(2) dopamine receptor','Human'), word2vec(A,D).

[Rule 54] [Pos cover = 8 Neg cover = 1]
drug_interaction(A,B) :-
   target_action(A,'Sodium-dependent serotonin transporter',inhibitor), word2vec(B,C), category(C,'Acids').

[Rule 57] [Pos cover = 7 Neg cover = 3]
drug_interaction(A,B) :-
   subclass(B,'Phenol ethers'), category(A,'Antidepressive Agents'), target(A,'Sodium-dependent serotonin transporter','Human').

[Rule 61] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   target(A,'Sodium-dependent serotonin transporter','Human'), word2vec(B,C), pathway(C,'Caffeine Metabolism',metabolic).

[Rule 63] [Pos cover = 45 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Central Nervous System Depressants'), target(A,'Mu-type opioid receptor','Human').

[Rule 65] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   state(A,solid), class(B,'Thienopyridines'), category(A,'Analgesics').

[Rule 66] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Acids, Heterocyclic'), target(A,'cGMP-inhibited 3\',5\'-cyclic phosphodiesterase A','Human').

[Rule 68] [Pos cover = 5 Neg cover = 2]
drug_interaction(A,B) :-
   state(A,solid), subclass(B,'Phenylbutylamines'), category(A,'Antineoplastic Agents'), affected_organism(A,'Humans and other mammals').

[Rule 69] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   subclass(B,'Dibenzodiazepines'), category(A,'Antineoplastic Agents'), affected_organism(A,'Humans and other mammals').

[Rule 75] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   property(B,logP,'2.4'), target(A,'cGMP-inhibited 3\',5\'-cyclic phosphodiesterase A','Human'), word2vec(B,C), category(C,'Alimentary Tract and Metabolism').

[Rule 79] [Pos cover = 7 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Antiemetics Antagonists'), target(A,'cGMP-inhibited 3\',5\'-cyclic phosphodiesterase A','Human'), word2vec(A,C).

[Rule 81] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Benzophenones'), category(B,'Antipsychotic Agents').

[Rule 85] [Pos cover = 6 Neg cover = 3]
drug_interaction(A,B) :-
   subclass(B,'Benzothiadiazines'), category(A,'Alimentary Tract and Metabolism'), word2vec(A,C).

[Rule 89] [Pos cover = 15 Neg cover = 8]
drug_interaction(A,B) :-
   property(B,logP,'3.8'), word2vec(A,C), target(C,'D(2) dopamine receptor','Human').

[Rule 90] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   state(A,solid), category(A,'Alimentary Tract and Metabolism'), property(B,'Water Solubility','77 mg/L (at 25 °C)'), word2vec(A,C).

[Rule 91] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   class(B,'Thienopyridines'), affected_organism(A,'Humans and other mammals'), word2vec(A,C), target(C,'D(2) dopamine receptor','Human').

[Rule 97] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   target(A,'Gamma-aminobutyric acid receptor subunit alpha-2','Human'), target_polypeptide(B,'Mu-type opioid receptor','Mu-type opioid receptor','Voltage-gated calcium channel activity').

[Rule 98] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   target(A,'Gamma-aminobutyric acid receptor subunit alpha-2','Human'), word2vec(B,C), category(C,'Adrenergic Uptake Inhibitors').

[Rule 99] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   target(A,'Gamma-aminobutyric acid receptor subunit alpha-2','Human'), word2vec(B,C), class(C,'Polypeptides').

[Rule 100] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Acids, Acyclic'), target(B,'Gamma-aminobutyric acid receptor subunit alpha-1','Human').

[Rule 106] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(A,'Antimetabolites'), affected_organism(A,'Humans and other mammals'), target(B,'Gamma-aminobutyric acid receptor subunit alpha-2','Human').

[Rule 107] [Pos cover = 10 Neg cover = 8]
drug_interaction(A,B) :-
   subclass(A,'Fatty acids and conjugates'), word2vec(B,C), target(C,'5-hydroxytryptamine receptor 2A','Human').

[Rule 112] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Adjuvants, Immunologic'), target(B,'Glucocorticoid receptor','Human').

[Rule 119] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Anticholesteremic Agents'), property(A,logP,'3.9').

[Rule 120] [Pos cover = 8 Neg cover = 1]
drug_interaction(A,B) :-
   property(A,logP,'3.9'), target(B,'Sodium-dependent serotonin transporter','Human'), word2vec(A,C).

[Rule 121] [Pos cover = 6 Neg cover = 4]
drug_interaction(A,B) :-
   subclass(A,'Phenylpropylamines'), category(B,'Adrenal Cortex Hormones'), target(A,'Sodium-dependent noradrenaline transporter','Human').

[Rule 125] [Pos cover = 11 Neg cover = 5]
drug_interaction(A,B) :-
   property(A,logP,'3.9'), target_action(B,'5-hydroxytryptamine receptor 3A',antagonist).

[Rule 129] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   class(A,'Epoxides'), category(B,'Anti-Inflammatory Agents').

[Rule 138] [Pos cover = 5 Neg cover = 2]
drug_interaction(A,B) :-
   state(B,solid), subclass(A,'Diphenylmethanes'), category(B,'Antineoplastic Agents'), affected_organism(B,'Humans and other mammals').

[Rule 155] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   state(B,solid), property(A,'Water Solubility','0.84 g/L at 20°C'), word2vec(B,C), category(C,'Analgesics').

[Rule 156] [Pos cover = 7 Neg cover = 1]
drug_interaction(A,B) :-
   target(B,'Adenosine receptor A2a','Human'), target_action(A,'5-hydroxytryptamine receptor 3A',antagonist).

[Rule 157] [Pos cover = 7 Neg cover = 1]
drug_interaction(A,B) :-
   target(B,'P2Y purinoceptor 12','Human'), target_action(A,'5-hydroxytryptamine receptor 3A',antagonist).

[Rule 158] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Alpha1 Antagonists'), category(A,'Alimentary Tract and Metabolism'), word2vec(A,C), subclass(C,'Amino acids, peptides, and analogues').

[Rule 161] [Pos cover = 8 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Antiemetics Antagonists'), property(B,logP,'3.9'), word2vec(B,C).

[Rule 162] [Pos cover = 6 Neg cover = 3]
drug_interaction(A,B) :-
   subclass(A,'Dibenzodiazepines'), word2vec(B,C), subclass(C,'Phenol ethers').

[Rule 164] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Alimentary Tract and Metabolism'), category(A,'Alpha1 Antagonists'), word2vec(B,C), subclass(C,'Amino acids, peptides, and analogues').

[Rule 180] [Pos cover = 75 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Central Nervous System Depressants'), target(B,'Alpha-2B adrenergic receptor','Human').

[Rule 181] [Pos cover = 45 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Central Nervous System Depressants'), target(B,'Gamma-aminobutyric acid receptor subunit alpha-1','Human').

[Rule 182] [Pos cover = 45 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Analgesics, Opioid'), category(A,'Central Nervous System Depressants').

[Rule 183] [Pos cover = 75 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Central Nervous System Depressants'), target(B,'D(2) dopamine receptor','Human').

[Rule 184] [Pos cover = 15 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Benzophenones'), category(A,'Central Nervous System Depressants').

[Rule 186] [Pos cover = 47 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Central Nervous System Depressants'), target_action(B,'Sodium-dependent serotonin transporter',inhibitor).

[Rule 190] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Antiemetics Antagonists'), category(A,'Alimentary Tract and Metabolism'), word2vec(A,C), subclass(C,'Amino Acids, Peptides, and Analogues').

[Rule 198] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Amines'), target(B,'Sodium-dependent serotonin transporter','Human'), target_polypeptide(A,'Adenosine receptor A2a','Adenosine receptor A2a','Identical protein binding').

[Rule 199] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   state(B,solid), subclass(A,'Benzothiadiazines'), category(B,'Alimentary Tract and Metabolism'), word2vec(B,C).

[Rule 204] [Pos cover = 7 Neg cover = 2]
drug_interaction(A,B) :-
   subclass(A,'Benzothiadiazines'), category(B,'Amines'), affected_organism(B,'Humans and other mammals'), word2vec(B,C).

[Rule 209] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   property(A,'Water Solubility','77 mg/L (at 25 °C)'), word2vec(B,C), word2vec(C,D), category(D,'Alpha1 Antagonists').

[Rule 218] [Pos cover = 6 Neg cover = 3]
drug_interaction(A,B) :-
   subclass(B,'Pyrimidines and pyrimidine derivatives'), word2vec(A,C), category(C,'Antineoplastic Agents, Hormonal').

[Rule 228] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   category(A,'Acids, Heterocyclic'), target(B,'cGMP-inhibited 3\',5\'-cyclic phosphodiesterase A','Human').

[Rule 246] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   state(B,solid), property(A,'Melting Point','122-123 °C'), word2vec(B,C), target(C,'5-hydroxytryptamine receptor 2A','Human').

[Rule 249] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Adjuvants, Immunologic'), category(A,'Adrenal Cortex Hormones').

[Rule 265] [Pos cover = 16 Neg cover = 2]
drug_interaction(A,B) :-
   state(A,solid), subclass(B,'Pheniramines'), category(A,'Central Nervous System Agents').

[Rule 284] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Triterpenoids'), category(B,'Adrenal Cortex Hormones').

[Rule 285] [Pos cover = 9 Neg cover = 5]
drug_interaction(A,B) :-
   subclass(A,'Steroid lactones'), word2vec(B,C), affected_organism(C,'Humans and other mammals'), property(C,'Water Solubility','Soluble').

[Rule 286] [Pos cover = 11 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Steroid lactones'), category(B,'Antineoplastic Agents').

[Rule 294] [Pos cover = 7 Neg cover = 3]
drug_interaction(A,B) :-
   superclass(A,'Alkaloids and derivatives'), subclass(B,'Phenol ethers').

[Rule 301] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   target_action(A,'Muscarinic acetylcholine receptor M2',antagonist), target_polypeptide(B,'Glucocorticoid receptor','Glucocorticoid receptor','Zinc ion binding'), word2vec(A,C).

[Rule 302] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   class(A,'Quinolines and derivatives'), category(B,'Adrenal Cortex Hormones').

[Rule 303] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   property(A,'Water Solubility','0.84 g/L at 20°C'), target(B,'Glucocorticoid receptor','Human').

[Rule 304] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Benzothiadiazines'), category(B,'Adrenal Cortex Hormones').

[Rule 365] [Pos cover = 12 Neg cover = 10]
drug_interaction(A,B) :-
   category(B,'Anti-Arrhythmia Agents'), category(A,'Antineoplastic Agents'), word2vec(B,C).

[Rule 366] [Pos cover = 7 Neg cover = 2]
drug_interaction(A,B) :-
   state(B,solid), class(A,'Thienopyridines'), word2vec(B,C), target(C,'D(2) dopamine receptor','Human').

[Rule 508] [Pos cover = 15 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Benzoxazolones'), category(A,'Central Nervous System Depressants').

[Training set performance]
            Actual
        +          -  
     + 769        199        968 
Pred 
     - 437        8495        8932 

       1206        8694        9900 

Accuracy = 0.9357575757575758
[Training set summary] [[769,199,437,8495]]
[Test set performance]
              Actual
         +            -   
     +  2760          4020          6780  
Pred 
     - 12958        140662        153620 

       15718        144682        160400 

Accuracy = 0.8941521197007481
[Test set summary] [[2760,4020,12958,140662]]
[time taken] [15124.951]
[total clauses constructed] [5147047]
true.
