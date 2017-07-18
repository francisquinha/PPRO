[theory]

[Rule 1] [Pos cover = 43 Neg cover = 34]
drug_interaction(A,B) :-
   state(B,solid), state(A,solid), property(B,'Water Solubility','572 mg/ml (Hydrochloride salt)').

[Rule 10] [Pos cover = 5 Neg cover = 2]
drug_interaction(A,B) :-
   state(B,solid), state(A,solid), subclass(B,'Delta valerolactones'), category(A,'Analgesics').

[Rule 12] [Pos cover = 13 Neg cover = 3]
drug_interaction(A,B) :-
   category(A,'Analgesics'), target(B,'Gamma-aminobutyric acid receptor subunit alpha-2','Human').

[Rule 13] [Pos cover = 11 Neg cover = 5]
drug_interaction(A,B) :-
   category(B,'Amides'), category(A,'Analgesics'), affected_organism(B,'Humans and other mammals').

[Rule 14] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Adrenergic Antagonists'), target(A,'Prostaglandin G/H synthase 1','Human').

[Rule 15] [Pos cover = 13 Neg cover = 8]
drug_interaction(A,B) :-
   category(A,'Analgesics'), target(B,'Kappa-type opioid receptor','Human').

[Rule 16] [Pos cover = 8 Neg cover = 0]
drug_interaction(A,B) :-
   property(B,logP,'2.9'), target(A,'Prostaglandin G/H synthase 1','Human').

[Rule 17] [Pos cover = 10 Neg cover = 6]
drug_interaction(A,B) :-
   subclass(B,'Amino acids, peptides, and analogues'), category(A,'Analgesics'), affected_organism(B,'Human Immunodeficiency Virus').

[Rule 18] [Pos cover = 13 Neg cover = 3]
drug_interaction(A,B) :-
   category(A,'Analgesics'), target(B,'Sodium channel protein type 1 subunit alpha','Human').

[Rule 21] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Autacoids'), target(A,'Prostaglandin G/H synthase 2','Human').

[Rule 22] [Pos cover = 17 Neg cover = 7]
drug_interaction(A,B) :-
   category(B,'Antipsychotic Agents'), category(A,'Analgesics').

[Rule 23] [Pos cover = 10 Neg cover = 4]
drug_interaction(A,B) :-
   state(A,solid), category(B,'Agents Acting on the Renin-Angiotensin System'), category(A,'Analgesics').

[Rule 25] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   property(A,logP,'2.9'), target(B,'Potassium voltage-gated channel subfamily H member 2','Human').

[Rule 27] [Pos cover = 19 Neg cover = 9]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Analgesics'), property(A,logP,'2.9').

[Rule 28] [Pos cover = 7 Neg cover = 1]
drug_interaction(A,B) :-
   property(A,logP,'2.9'), target(B,'Adenosine receptor A2a','Human').

[Rule 30] [Pos cover = 12 Neg cover = 7]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), property(A,logP,'2.9').

[Rule 31] [Pos cover = 33 Neg cover = 27]
drug_interaction(A,B) :-
   state(B,solid), subclass(A,'Phenols and derivatives'), affected_organism(B,'Humans and other mammals').

[Rule 32] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(B,'Amino acids, peptides, and analogues'), category(A,'Adrenergic Antagonists'), affected_organism(B,'Human Immunodeficiency Virus').

[Rule 34] [Pos cover = 12 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Adrenergic Antagonists'), target_action(B,'D(2) dopamine receptor',antagonist).

[Rule 39] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   target(A,'Gamma-aminobutyric acid receptor subunit alpha-2','Human'), target_action(B,'Beta-1 adrenergic receptor',antagonist).

[Rule 40] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   target(A,'Gamma-aminobutyric acid receptor subunit alpha-2','Human'), target_polypeptide(B,'Kappa-type opioid receptor','Kappa-type opioid receptor','Opioid receptor activity').

[Rule 42] [Pos cover = 7 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Anticonvulsants'), target(A,'Gamma-aminobutyric acid receptor subunit alpha-2','Human').

[Rule 43] [Pos cover = 9 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Antipsychotic Agents'), target(A,'Gamma-aminobutyric acid receptor subunit alpha-1','Human').

[Rule 46] [Pos cover = 8 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Agents Acting on the Renin-Angiotensin System'), category(A,'Antihypertensive Agents').

[Rule 48] [Pos cover = 13 Neg cover = 1]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Analgesics'), target(A,'Gamma-aminobutyric acid receptor subunit alpha-2','Human').

[Rule 52] [Pos cover = 9 Neg cover = 3]
drug_interaction(A,B) :-
   category(A,'Antipsychotic Agents'), target(B,'Gamma-aminobutyric acid receptor subunit alpha-1','Human').

[Rule 53] [Pos cover = 12 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Adrenergic Antagonists'), category(A,'Antiemetics').

[Rule 55] [Pos cover = 7 Neg cover = 0]
drug_interaction(A,B) :-
   state(B,solid), category(A,'Antipsychotic Agents'), target(B,'D(2) dopamine receptor','Human').

[Rule 56] [Pos cover = 6 Neg cover = 1]
drug_interaction(A,B) :-
   state(A,solid), category(B,'Antidiuretic Agents'), category(A,'Analgesics').

[Rule 57] [Pos cover = 15 Neg cover = 0]
drug_interaction(A,B) :-
   target(A,'Kappa-type opioid receptor','Human'), target_polypeptide(B,'Sodium-dependent serotonin transporter','Sodium-dependent serotonin transporter','Serotonin:sodium symporter activity').

[Rule 58] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   subclass(B,'Phenols and derivatives'), category(A,'Alkaloids').

[Rule 59] [Pos cover = 9 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Acids, Acyclic'), target(A,'Kappa-type opioid receptor','Human').

[Rule 61] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   class(B,'Thienopyridines'), category(A,'Alkaloids').

[Rule 74] [Pos cover = 9 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Antineoplastic Agents'), property(B,'Hydrophobicity','-0.415').

[Rule 77] [Pos cover = 24 Neg cover = 6]
drug_interaction(A,B) :-
   category(B,'Adrenergic Agents'), category(A,'Adrenergic Agents').

[Rule 87] [Pos cover = 32 Neg cover = 28]
drug_interaction(A,B) :-
   state(B,solid), subclass(A,'Imidazolidines'), affected_organism(B,'Humans and other mammals').

[Rule 90] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Anti-HIV Agents'), target(A,'Estrogen receptor','Human').

[Rule 95] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   target(A,'Estrogen receptor','Human'), target_polypeptide(B,'Gamma-aminobutyric acid receptor subunit alpha-1','Gamma-aminobutyric acid receptor subunit alpha-1','Inhibitory extracellular ligand-gated ion channel activity').

[Rule 104] [Pos cover = 12 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Anti-Arrhythmia Agents'), target_action(A,'Sodium-dependent serotonin transporter',inhibitor).

[Rule 107] [Pos cover = 13 Neg cover = 1]
drug_interaction(A,B) :-
   target(B,'Alpha-1A adrenergic receptor','Human'), target(A,'Sodium-dependent serotonin transporter','Human').

[Rule 108] [Pos cover = 6 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Acids, Acyclic'), target_action(A,'Sodium-dependent serotonin transporter',inhibitor).

[Rule 109] [Pos cover = 9 Neg cover = 6]
drug_interaction(A,B) :-
   category(B,'Anti-HIV Agents'), target(A,'Sodium-dependent serotonin transporter','Human').

[Rule 110] [Pos cover = 7 Neg cover = 3]
drug_interaction(A,B) :-
   target(B,'Adenosine receptor A2a','Human'), target(A,'Sodium-dependent serotonin transporter','Human').

[Rule 111] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   class(B,'Thienopyridines'), target(A,'Sodium-dependent serotonin transporter','Human').

[Rule 113] [Pos cover = 10 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Steroid lactones'), category(B,'Antineoplastic Agents').

[Rule 114] [Pos cover = 12 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Adrenergic Antagonists'), category(A,'Anti-Arrhythmia Agents').

[Rule 117] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Amides'), category(A,'Anti-Arrhythmia Agents'), affected_organism(B,'Humans and other mammals').

[Rule 126] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Amino acids, peptides, and analogues'), category(B,'Antipsychotic Agents'), category(A,'Anti-HIV Agents').

[Rule 134] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Adrenergic Antagonists'), target_polypeptide(A,'Adenosine receptor A2a','Adenosine receptor A2a','Identical protein binding').

[Rule 136] [Pos cover = 7 Neg cover = 1]
drug_interaction(A,B) :-
   property(B,logP,'2.9'), target_polypeptide(A,'Adenosine receptor A2a','Adenosine receptor A2a','Identical protein binding').

[Rule 138] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Anticonvulsants'), category(A,'Antimalarials').

[Rule 139] [Pos cover = 8 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Antimalarials'), target_action(B,'D(2) dopamine receptor',antagonist).

[Rule 144] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   category(A,'Acids, Heterocyclic'), affected_organism(B,'Human Immunodeficiency Virus').

[Rule 147] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Anticonvulsants'), category(A,'Acids, Heterocyclic').

[Rule 166] [Pos cover = 13 Neg cover = 2]
drug_interaction(A,B) :-
   target_action(B,'Sodium-dependent serotonin transporter',inhibitor), target_polypeptide(A,'D(2) dopamine receptor','D(2) dopamine receptor','Potassium channel regulator activity').

[Rule 167] [Pos cover = 15 Neg cover = 0]
drug_interaction(A,B) :-
   target(B,'Kappa-type opioid receptor','Human'), target(A,'D(2) dopamine receptor','Human').

[Rule 172] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   subclass(B,'Amino acids, peptides, and analogues'), subclass(A,'Phenothiazines'), category(B,'Anti-HIV Agents').

[Rule 177] [Pos cover = 8 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Antimalarials'), category(A,'Antiemetics').

[Rule 180] [Pos cover = 12 Neg cover = 4]
drug_interaction(A,B) :-
   category(B,'Anticonvulsants'), category(A,'Antiemetics').

[Rule 190] [Pos cover = 6 Neg cover = 1]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Analgesics'), category(A,'Antidiuretic Agents').

[Rule 204] [Pos cover = 9 Neg cover = 1]
drug_interaction(A,B) :-
   target(B,'Sodium channel protein type 1 subunit alpha','Human'), target(A,'Sodium-dependent dopamine transporter','Human').

[Rule 205] [Pos cover = 12 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Antipsychotic Agents'), target(A,'Sodium-dependent dopamine transporter','Human').

[Rule 214] [Pos cover = 17 Neg cover = 1]
drug_interaction(A,B) :-
   category(A,'Adrenergic Agents'), target_action(B,'Sodium-dependent serotonin transporter',inhibitor).

[Rule 221] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Adrenergic Antagonists'), target_polypeptide(B,'Adenosine receptor A2a','Adenosine receptor A2a','Identical protein binding').

[Rule 230] [Pos cover = 8 Neg cover = 4]
drug_interaction(A,B) :-
   subclass(A,'Amino acids, peptides, and analogues'), category(B,'Adrenergic Agents'), category(A,'Anti-HIV Agents').

[Rule 231] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Alkaloids'), property(A,'Water Solubility','Slightly soluble').

[Rule 243] [Pos cover = 12 Neg cover = 8]
drug_interaction(A,B) :-
   category(B,'Amines'), category(A,'Amides'), affected_organism(A,'Humans and other mammals').

[Rule 244] [Pos cover = 11 Neg cover = 3]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Analgesics'), category(A,'Amides'), affected_organism(A,'Humans and other mammals').

[Rule 257] [Pos cover = 6 Neg cover = 3]
drug_interaction(A,B) :-
   state(B,solid), class(A,'Macrolides and analogues'), category(B,'Amines').

[Rule 282] [Pos cover = 15 Neg cover = 0]
drug_interaction(A,B) :-
   target(B,'Kappa-type opioid receptor','Human'), target(A,'Sodium-dependent serotonin transporter','Human').

[Rule 283] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(A,'Amines'), target(B,'Estrogen receptor','Human'), target(A,'Sodium-dependent serotonin transporter','Human').

[Rule 286] [Pos cover = 12 Neg cover = 0]
drug_interaction(A,B) :-
   target_action(A,'Sodium-dependent serotonin transporter',inhibitor), target_polypeptide(B,'Sodium-dependent serotonin transporter','Sodium-dependent serotonin transporter','Serotonin:sodium symporter activity').

[Rule 293] [Pos cover = 7 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Amides'), affected_organism(B,'Humans and other mammals'), target(A,'Sodium-dependent serotonin transporter','Human').

[Rule 312] [Pos cover = 7 Neg cover = 3]
drug_interaction(A,B) :-
   target(A,'cGMP-inhibited 3\',5\'-cyclic phosphodiesterase A','Human'), target_polypeptide(B,'Sodium-dependent serotonin transporter','Sodium-dependent serotonin transporter','Serotonin:sodium symporter activity').

[Rule 341] [Pos cover = 15 Neg cover = 3]
drug_interaction(A,B) :-
   target(B,'Kappa-type opioid receptor','Human'), target(A,'Muscarinic acetylcholine receptor M1','Human').

[Rule 374] [Pos cover = 6 Neg cover = 1]
drug_interaction(A,B) :-
   state(B,solid), class(A,'Dioxolopyrans'), category(B,'Analgesics').

[Rule 375] [Pos cover = 12 Neg cover = 3]
drug_interaction(A,B) :-
   category(A,'Antihypertensive Agents'), target(B,'Prostaglandin G/H synthase 2','Human').

[Rule 386] [Pos cover = 13 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Adrenergic Antagonists'), category(A,'Antihypertensive Agents').

[Rule 417] [Pos cover = 9 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Antineoplastic Agents'), property(A,'Hydrophobicity','-0.415').

[Rule 438] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   category(A,'Anti-HIV Agents'), target(B,'Estrogen receptor','Human').

[Rule 443] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   target(B,'Estrogen receptor','Human'), target(A,'Gamma-aminobutyric acid receptor subunit alpha-1','Human').

[Rule 457] [Pos cover = 10 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Steroid lactones'), category(A,'Antineoplastic Agents').

[Rule 483] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Antimalarials'), category(A,'Anticonvulsants').

[Rule 488] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Acids, Heterocyclic'), category(A,'Anti-HIV Agents').

[Rule 565] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Amides'), affected_organism(B,'Humans and other mammals'), target(A,'Gamma-aminobutyric acid receptor subunit alpha-1','Human').

[Training set performance]
            Actual
        +          -  
     + 733        255        988 
Pred 
     - 597        8315        8912 

       1330        8570        9900 

Accuracy = 0.9139393939393939
[Training set summary] [[733,255,597,8315]]
[Test set performance]
              Actual
         +            -   
     +  2556          4151          6707  
Pred 
     - 12618        141075        153693 

       15174        145226        160400 

Accuracy = 0.8954551122194514
[Test set summary] [[2556,4151,12618,141075]]
[time taken] [1948.357]
[total clauses constructed] [5460252]
true.
