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

[Rule 4] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Triterpenoids'), category(A,'Adrenal Cortex Hormones').

[Rule 5] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   class(B,'Epoxides'), category(A,'Adrenal Cortex Hormones').

[Rule 6] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   property(B,'Melting Point','71 °C (whole mAb)'), target(A,'Glucocorticoid receptor','Human').

[Rule 7] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   property(B,'Melting Point','152-153'), target(A,'Glucocorticoid receptor','Human').

[Rule 8] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   class(B,'Quinolines and derivatives'), category(A,'Adrenal Cortex Hormones').

[Rule 9] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   property(B,'Water Solubility','0.84 g/L at 20°C'), target(A,'Glucocorticoid receptor','Human').

[Rule 10] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Benzothiadiazines'), category(A,'Adrenal Cortex Hormones').

[Rule 25] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(A,'Antimalarials'), target_action(B,'D(1A) dopamine receptor',antagonist).

[Rule 27] [Pos cover = 45 Neg cover = 36]
drug_interaction(A,B) :-
   state(A,solid), property(B,'Water Solubility','572 mg/ml (Hydrochloride salt)').

[Rule 28] [Pos cover = 10 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Acids, Acyclic'), target(B,'D(2) dopamine receptor','Human').

[Rule 29] [Pos cover = 5 Neg cover = 2]
drug_interaction(A,B) :-
   state(A,solid), subclass(B,'Diphenylmethanes'), category(A,'Antineoplastic Agents'), affected_organism(A,'Humans and other mammals').

[Rule 30] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   property(A,'Melting Point','71 °C (whole mAb)'), target(B,'Glucocorticoid receptor','Human').

[Rule 33] [Pos cover = 5 Neg cover = 2]
drug_interaction(A,B) :-
   subclass(B,'Benzothiadiazines'), category(A,'Analgesics').

[Rule 37] [Pos cover = 6 Neg cover = 4]
drug_interaction(A,B) :-
   category(B,'Antimalarials'), target_action(A,'Muscarinic acetylcholine receptor M2',antagonist).

[Rule 38] [Pos cover = 15 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Analgesics, Opioid'), target(A,'Muscarinic acetylcholine receptor M2','Human').

[Rule 39] [Pos cover = 7 Neg cover = 5]
drug_interaction(A,B) :-
   category(B,'Amides'), affected_organism(B,'Humans and other mammals'), target(A,'Muscarinic acetylcholine receptor M2','Human').

[Rule 40] [Pos cover = 7 Neg cover = 3]
drug_interaction(A,B) :-
   superclass(B,'Alkaloids and derivatives'), subclass(A,'Phenol ethers').

[Rule 42] [Pos cover = 19 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Antiemetics Antagonists'), target(A,'Sodium-dependent serotonin transporter','Human').

[Rule 43] [Pos cover = 76 Neg cover = 10]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Central Nervous System Agents'), target(A,'Alpha-2B adrenergic receptor','Human').

[Rule 44] [Pos cover = 75 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Central Nervous System Depressants'), target(A,'Alpha-2B adrenergic receptor','Human').

[Rule 49] [Pos cover = 9 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Antidepressive Agents'), target(B,'Mu-type opioid receptor','Human').

[Rule 50] [Pos cover = 47 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Central Nervous System Depressants'), category(A,'Antidepressive Agents').

[Rule 51] [Pos cover = 16 Neg cover = 1]
drug_interaction(A,B) :-
   target(B,'5-hydroxytryptamine receptor 1D','Human'), target(A,'Histamine H1 receptor','Human').

[Rule 52] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Antimetabolites'), category(A,'Antidepressive Agents'), affected_organism(B,'Humans and other mammals'), target(A,'Sodium-dependent serotonin transporter','Human').

[Rule 53] [Pos cover = 6 Neg cover = 4]
drug_interaction(A,B) :-
   category(A,'Antidepressive Agents'), property(B,'Water Solubility','Insoluble'), target(A,'Sodium-dependent serotonin transporter','Human').

[Rule 56] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   category(A,'Amines'), target_polypeptide(B,'Adenosine receptor A2a','Adenosine receptor A2a','Identical protein binding'), target_polypeptide(A,'Sodium-dependent serotonin transporter','Sodium-dependent serotonin transporter','Serotonin:sodium symporter activity').

[Rule 59] [Pos cover = 7 Neg cover = 3]
drug_interaction(A,B) :-
   subclass(B,'Phenol ethers'), category(A,'Antidepressive Agents'), target(A,'Sodium-dependent serotonin transporter','Human').

[Rule 65] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Cardiovascular Agents'), category(A,'Amines'), property(B,'Water Solubility','Freely soluble'), target(A,'Sodium-dependent serotonin transporter','Human').

[Rule 67] [Pos cover = 45 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Central Nervous System Depressants'), target(A,'Mu-type opioid receptor','Human').

[Rule 70] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Acids, Heterocyclic'), target(A,'cGMP-inhibited 3\',5\'-cyclic phosphodiesterase A','Human').

[Rule 72] [Pos cover = 5 Neg cover = 2]
drug_interaction(A,B) :-
   state(A,solid), subclass(B,'Phenylbutylamines'), category(A,'Antineoplastic Agents'), affected_organism(A,'Humans and other mammals').

[Rule 73] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   subclass(B,'Dibenzodiazepines'), category(A,'Antineoplastic Agents'), affected_organism(A,'Humans and other mammals').

[Rule 78] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   property(B,logP,'2.4'), target(A,'cGMP-inhibited 3\',5\'-cyclic phosphodiesterase A','Human').

[Rule 80] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   target(B,'P2Y purinoceptor 12','Human'), target(A,'cGMP-inhibited 3\',5\'-cyclic phosphodiesterase A','Human').

[Rule 85] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Benzophenones'), category(B,'Antipsychotic Agents').

[Rule 94] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   category(A,'Anti-Arrhythmia Agents'), property(B,logP,'3.8').

[Rule 100] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   target(A,'Gamma-aminobutyric acid receptor subunit alpha-2','Human'), target_polypeptide(B,'Mu-type opioid receptor','Mu-type opioid receptor','Voltage-gated calcium channel activity').

[Rule 102] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Antimetabolites'), affected_organism(B,'Humans and other mammals'), target(A,'Gamma-aminobutyric acid receptor subunit alpha-2','Human').

[Rule 103] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Acids, Acyclic'), target(B,'Gamma-aminobutyric acid receptor subunit alpha-1','Human').

[Rule 109] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(A,'Antimetabolites'), affected_organism(A,'Humans and other mammals'), target(B,'Gamma-aminobutyric acid receptor subunit alpha-2','Human').

[Rule 110] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(A,'Antimetabolites'), affected_organism(A,'Humans and other mammals'), property(B,logP,'3.8').

[Rule 117] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Adjuvants, Immunologic'), target(B,'Glucocorticoid receptor','Human').

[Rule 124] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Anticholesteremic Agents'), property(A,logP,'3.9').

[Rule 126] [Pos cover = 15 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Amines'), target(A,'Sodium-dependent serotonin transporter','Human'), target_polypeptide(B,'Sodium-dependent serotonin transporter','Sodium-dependent serotonin transporter','Serotonin:sodium symporter activity').

[Rule 137] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   class(A,'Epoxides'), category(B,'Anti-Inflammatory Agents').

[Rule 147] [Pos cover = 5 Neg cover = 2]
drug_interaction(A,B) :-
   state(B,solid), subclass(A,'Diphenylmethanes'), category(B,'Antineoplastic Agents'), affected_organism(B,'Humans and other mammals').

[Rule 157] [Pos cover = 7 Neg cover = 1]
drug_interaction(A,B) :-
   superclass(A,'Alkaloids and derivatives'), category(B,'Antiemetics Antagonists').

[Rule 169] [Pos cover = 7 Neg cover = 1]
drug_interaction(A,B) :-
   superclass(B,'Alkaloids and derivatives'), target_action(A,'5-hydroxytryptamine receptor 3A',antagonist).

[Rule 170] [Pos cover = 7 Neg cover = 1]
drug_interaction(A,B) :-
   target(B,'P2Y purinoceptor 12','Human'), target_action(A,'5-hydroxytryptamine receptor 3A',antagonist).

[Rule 172] [Pos cover = 12 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Antiemetics Antagonists'), target_action(A,'5-hydroxytryptamine receptor 3A',antagonist).

[Rule 176] [Pos cover = 7 Neg cover = 3]
drug_interaction(A,B) :-
   subclass(B,'Phenol ethers'), category(A,'Alpha1 Antagonists').

[Rule 178] [Pos cover = 6 Neg cover = 4]
drug_interaction(A,B) :-
   category(A,'Alpha1 Antagonists'), property(B,'Water Solubility','Insoluble').

[Rule 192] [Pos cover = 75 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Central Nervous System Depressants'), target(B,'Alpha-2B adrenergic receptor','Human').

[Rule 193] [Pos cover = 45 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Central Nervous System Depressants'), target(B,'Gamma-aminobutyric acid receptor subunit alpha-1','Human').

[Rule 194] [Pos cover = 45 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Analgesics, Opioid'), category(A,'Central Nervous System Depressants').

[Rule 195] [Pos cover = 75 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Central Nervous System Depressants'), target(B,'D(2) dopamine receptor','Human').

[Rule 196] [Pos cover = 15 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Benzophenones'), category(A,'Central Nervous System Depressants').

[Rule 210] [Pos cover = 6 Neg cover = 4]
drug_interaction(A,B) :-
   state(B,solid), subclass(A,'Benzothiadiazines'), category(B,'Alimentary Tract and Metabolism').

[Rule 220] [Pos cover = 7 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Antiemetics Antagonists'), target(A,'P2Y purinoceptor 12','Human').

[Rule 232] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Indoles'), category(B,'Antipsychotic Agents').

[Rule 249] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   category(A,'Acids, Heterocyclic'), target(B,'cGMP-inhibited 3\',5\'-cyclic phosphodiesterase A','Human').

[Rule 265] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(A,'Anticholesteremic Agents'), property(B,logP,'3.9').

[Rule 278] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Adjuvants, Immunologic'), category(A,'Adrenal Cortex Hormones').

[Rule 294] [Pos cover = 15 Neg cover = 2]
drug_interaction(A,B) :-
   state(A,solid), subclass(B,'Phenylbutylamines'), category(A,'Central Nervous System Agents').

[Rule 295] [Pos cover = 16 Neg cover = 2]
drug_interaction(A,B) :-
   state(A,solid), subclass(B,'Pheniramines'), category(A,'Central Nervous System Agents').

[Rule 318] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Triterpenoids'), category(B,'Adrenal Cortex Hormones').

[Rule 324] [Pos cover = 11 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Steroid lactones'), category(B,'Antineoplastic Agents').

[Rule 336] [Pos cover = 7 Neg cover = 3]
drug_interaction(A,B) :-
   superclass(A,'Alkaloids and derivatives'), subclass(B,'Phenol ethers').

[Rule 343] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   superclass(A,'Alkaloids and derivatives'), category(B,'Amines'), target(B,'Sodium-dependent serotonin transporter','Human').

[Rule 345] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   property(A,'Melting Point','152-153'), target(B,'Glucocorticoid receptor','Human').

[Rule 346] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   class(A,'Quinolines and derivatives'), category(B,'Adrenal Cortex Hormones').

[Rule 347] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   property(A,'Water Solubility','0.84 g/L at 20°C'), target(B,'Glucocorticoid receptor','Human').

[Rule 348] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Benzothiadiazines'), category(B,'Adrenal Cortex Hormones').

[Rule 407] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   target(A,'P2Y purinoceptor 12','Human'), target_action(B,'cGMP-inhibited 3\',5\'-cyclic phosphodiesterase A',inhibitor).

[Rule 429] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Antimetabolites'), affected_organism(B,'Humans and other mammals'), property(A,logP,'3.8').

[Rule 597] [Pos cover = 15 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Benzoxazolones'), category(A,'Central Nervous System Depressants').

[Rule 624] [Pos cover = 11 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Steroid lactones'), category(A,'Antineoplastic Agents').

[Training set performance]
            Actual
        +          -  
     + 655        133        788 
Pred 
     - 551        8561        9112 

       1206        8694        9900 

Accuracy = 0.9309090909090909
[Training set summary] [[655,133,551,8561]]
[Test set performance]
              Actual
         +            -   
     +  2297          2417          4714  
Pred 
     - 13421        142265        155686 

       15718        144682        160400 

Accuracy = 0.9012593516209476
[Test set summary] [[2297,2417,13421,142265]]
[time taken] [1838.661]
[total clauses constructed] [4865161]
true.
