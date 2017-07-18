[theory]

[Rule 2] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Antiemetics'), target_polypeptide(A,'Adenosine receptor A2a','Adenosine receptor A2a','Identical protein binding').

[Rule 7] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Adrenergic Antagonists'), category(A,'Agents Acting on the Renin-Angiotensin System').

[Rule 13] [Pos cover = 7 Neg cover = 5]
drug_interaction(A,B) :-
   category(B,'Analgesics'), category(A,'Agents Acting on the Renin-Angiotensin System').

[Rule 22] [Pos cover = 16 Neg cover = 8]
drug_interaction(A,B) :-
   category(B,'Cardiovascular Agents'), category(B,'Cardiovascular System'), category(A,'Agents Acting on the Renin-Angiotensin System').

[Rule 30] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(B,'Indanones'), affected_organism(A,'Enteric bacteria and other eubacteria').

[Rule 34] [Pos cover = 8 Neg cover = 6]
drug_interaction(A,B) :-
   state(A,solid), category(A,'Alimentary Tract and Metabolism'), property(B,'Water Solubility','77 mg/L (at 25 °C)').

[Rule 38] [Pos cover = 9 Neg cover = 5]
drug_interaction(A,B) :-
   state(B,solid), class(A,'Benzodiazepines'), category(B,'Alimentary Tract and Metabolism').

[Rule 45] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   category(A,'Antiemetics'), target(B,'Adenosine receptor A2a','Human').

[Rule 46] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Anticonvulsants'), target(A,'D(2) dopamine receptor','Human').

[Rule 53] [Pos cover = 19 Neg cover = 11]
drug_interaction(A,B) :-
   category(B,'Agents Acting on the Renin-Angiotensin System'), category(A,'Cardiovascular System').

[Rule 58] [Pos cover = 7 Neg cover = 5]
drug_interaction(A,B) :-
   subclass(B,'Phenol ethers'), category(A,'Analgesics').

[Rule 60] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(A,'Analgesics'), property(B,'Water Solubility','Insoluble').

[Rule 66] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   category(A,'14-alpha Demethylase Inhibitors'), target(B,'Potassium voltage-gated channel subfamily H member 2','Human').

[Rule 67] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Analgesics'), category(A,'14-alpha Demethylase Inhibitors').

[Rule 73] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'14-alpha Demethylase Inhibitors'), target_polypeptide(B,'Adenosine receptor A2a','Adenosine receptor A2a','Identical protein binding').

[Rule 75] [Pos cover = 9 Neg cover = 5]
drug_interaction(A,B) :-
   state(A,solid), class(B,'Benzodiazepines'), category(A,'Alimentary Tract and Metabolism').

[Rule 85] [Pos cover = 8 Neg cover = 4]
drug_interaction(A,B) :-
   category(A,'Anti-Anxiety Agents'), target(B,'Histamine H1 receptor','Human').

[Rule 87] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'14-alpha Demethylase Inhibitors'), category(A,'Anti-Anxiety Agents').

[Rule 89] [Pos cover = 11 Neg cover = 4]
drug_interaction(A,B) :-
   category(B,'Analgesics'), category(A,'Anti-Anxiety Agents').

[Rule 93] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Amides'), category(A,'Anti-Anxiety Agents'), affected_organism(B,'Humans and other mammals').

[Rule 94] [Pos cover = 8 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Anti-Anxiety Agents'), target(B,'Gamma-aminobutyric acid receptor subunit alpha-1','Human').

[Rule 96] [Pos cover = 13 Neg cover = 11]
drug_interaction(A,B) :-
   state(A,solid), category(B,'14-alpha Demethylase Inhibitors'), category(A,'Alimentary Tract and Metabolism'), affected_organism(A,'Humans and other mammals').

[Rule 111] [Pos cover = 7 Neg cover = 4]
drug_interaction(A,B) :-
   category(B,'Cardiovascular System'), category(A,'Anesthetics').

[Rule 122] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'14-alpha Demethylase Inhibitors'), target_polypeptide(A,'Potassium voltage-gated channel subfamily H member 2','Potassium voltage-gated channel subfamily H member 2','Voltage-gated potassium channel activity involved in ventricular cardiac muscle cell action potential repolarization').

[Rule 131] [Pos cover = 11 Neg cover = 4]
drug_interaction(A,B) :-
   category(B,'Anti-Anxiety Agents'), category(A,'Analgesics').

[Rule 145] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   category(A,'Adrenergic Antagonists'), target(B,'Adenosine receptor A2a','Human').

[Rule 149] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   target(B,'Beta-1 adrenergic receptor','Human'), target(A,'Beta-1 adrenergic receptor','Human').

[Rule 157] [Pos cover = 15 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Cardiovascular Agents'), category(B,'Cardiovascular System'), category(A,'Adrenergic Antagonists').

[Rule 164] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   target(A,'Sodium-dependent serotonin transporter','Human'), target_action(B,'Histamine H1 receptor',antagonist).

[Rule 186] [Pos cover = 10 Neg cover = 3]
drug_interaction(A,B) :-
   state(B,solid), class(A,'Naphthalenes'), category(B,'Cardiovascular Agents').

[Rule 203] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   target(B,'Carbonic anhydrase 1','Human'), target(A,'GABA-A receptor (anion channel)','Human').

[Rule 205] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   target(A,'Gamma-aminobutyric acid receptor subunit alpha-1','Human'), target_action(B,'Histamine H1 receptor',antagonist).

[Rule 207] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Anticonvulsants'), target(A,'Gamma-aminobutyric acid receptor subunit alpha-1','Human').

[Rule 208] [Pos cover = 7 Neg cover = 4]
drug_interaction(A,B) :-
   category(B,'Cardiovascular System'), category(A,'Adjuvants').

[Rule 217] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   target(B,'Sodium-dependent serotonin transporter','Human'), target(A,'Histamine H1 receptor','Human').

[Rule 218] [Pos cover = 8 Neg cover = 3]
drug_interaction(A,B) :-
   target(A,'Histamine H1 receptor','Human'), target_polypeptide(B,'GABA-A receptor (anion channel)','Gamma-aminobutyric acid receptor subunit alpha-1','Inhibitory extracellular ligand-gated ion channel activity').

[Rule 240] [Pos cover = 14 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Anti-Anxiety Agents'), target(A,'GABA-A receptor (anion channel)','Human').

[Rule 249] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Blood Glucose Lowering Agents'), target(B,'DNA topoisomerase 4 subunit A','Haemophilus influenzae (strain ATCC 51907 / DSM 11121 / KW20 / Rd)').

[Rule 269] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(A,'Indanones'), affected_organism(B,'Enteric bacteria and other eubacteria').

[Rule 295] [Pos cover = 11 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Steroid lactones'), category(B,'Antineoplastic Agents').

[Rule 306] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'14-alpha Demethylase Inhibitors'), target(A,'Adenosine receptor A2a','Human').

[Rule 313] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Antimalarials'), target(A,'Adenosine receptor A2a','Human').

[Rule 364] [Pos cover = 8 Neg cover = 6]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Alimentary Tract and Metabolism'), property(A,'Water Solubility','77 mg/L (at 25 °C)').

[Rule 404] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Anti-Anxiety Agents'), category(A,'Amides'), affected_organism(A,'Humans and other mammals').

[Rule 454] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Adrenergic Antagonists'), target(A,'Adenosine receptor A2a','Human').

[Rule 590] [Pos cover = 11 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Steroid lactones'), category(A,'Antineoplastic Agents').

[Training set performance]
            Actual
        +          -  
     + 321        118        439 
Pred 
     - 581        8880        9461 

       902        8998        9900 

Accuracy = 0.9293939393939394
[Training set summary] [[321,118,581,8880]]
[Test set performance]
              Actual
         +            -   
     +  1763          1370          3133  
Pred 
     - 15037        142230        157267 

       16800        143600        160400 

Accuracy = 0.897711970074813
[Test set summary] [[1763,1370,15037,142230]]
[time taken] [1878.25]
[total clauses constructed] [4905874]
true.
