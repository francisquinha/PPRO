[theory]

[Rule 1] [Pos cover = 43 Neg cover = 34]
drug_interaction(A,B) :-
   state(B,solid), state(A,solid), property(B,'Water Solubility','572 mg/ml (Hydrochloride salt)').

[Rule 4] [Pos cover = 7 Neg cover = 2]
drug_interaction(A,B) :-
   state(A,solid), subclass(B,'Benzoylindoles'), word2vec(A,C), target(C,'5-hydroxytryptamine receptor 2A','Human').

[Rule 6] [Pos cover = 20 Neg cover = 12]
drug_interaction(A,B) :-
   state(A,solid), category(B,'Anti-HIV Agents'), word2vec(A,C), target(C,'D(2) dopamine receptor','Human').

[Rule 9] [Pos cover = 14 Neg cover = 4]
drug_interaction(A,B) :-
   state(B,solid), target(A,'Prostaglandin G/H synthase 1','Human'), word2vec(B,C), subclass(C,'Benzenesulfonamides').

[Rule 11] [Pos cover = 13 Neg cover = 3]
drug_interaction(A,B) :-
   category(A,'Analgesics'), target(B,'Gamma-aminobutyric acid receptor subunit alpha-2','Human').

[Rule 12] [Pos cover = 11 Neg cover = 5]
drug_interaction(A,B) :-
   category(B,'Amides'), category(A,'Analgesics'), affected_organism(B,'Humans and other mammals').

[Rule 13] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Adrenergic Antagonists'), target(A,'Prostaglandin G/H synthase 1','Human').

[Rule 14] [Pos cover = 13 Neg cover = 8]
drug_interaction(A,B) :-
   category(A,'Analgesics'), target(B,'Kappa-type opioid receptor','Human').

[Rule 15] [Pos cover = 10 Neg cover = 2]
drug_interaction(A,B) :-
   property(B,logP,'2.9'), target(A,'Prostaglandin G/H synthase 2','Human').

[Rule 18] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Autacoids'), target(A,'Prostaglandin G/H synthase 2','Human').

[Rule 19] [Pos cover = 17 Neg cover = 7]
drug_interaction(A,B) :-
   category(B,'Antipsychotic Agents'), category(A,'Analgesics').

[Rule 20] [Pos cover = 16 Neg cover = 8]
drug_interaction(A,B) :-
   category(A,'Analgesics'), word2vec(B,C), subclass(C,'Phenol ethers'), category(C,'Alcohols').

[Rule 21] [Pos cover = 8 Neg cover = 4]
drug_interaction(A,B) :-
   property(A,logP,'2.9'), word2vec(B,C), target(C,'Sodium channel protein type 1 subunit alpha','Human').

[Rule 22] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   property(A,logP,'2.9'), target(B,'Potassium voltage-gated channel subfamily H member 2','Human').

[Rule 24] [Pos cover = 19 Neg cover = 9]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Analgesics'), property(A,logP,'2.9').

[Rule 25] [Pos cover = 7 Neg cover = 1]
drug_interaction(A,B) :-
   property(A,logP,'2.9'), target(B,'Adenosine receptor A2a','Human').

[Rule 27] [Pos cover = 12 Neg cover = 7]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), property(A,logP,'2.9').

[Rule 28] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   target(B,'Kappa-type opioid receptor','Human'), word2vec(A,C), target(C,'Solute carrier family 12 member 1','Human').

[Rule 29] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(B,'Amino acids, peptides, and analogues'), category(A,'Adrenergic Antagonists'), affected_organism(B,'Human Immunodeficiency Virus').

[Rule 30] [Pos cover = 24 Neg cover = 6]
drug_interaction(A,B) :-
   category(B,'Adrenergic Agents'), category(A,'Adrenergic Agents').

[Rule 31] [Pos cover = 22 Neg cover = 14]
drug_interaction(A,B) :-
   category(A,'Adrenergic Antagonists'), word2vec(B,C), category(C,'Anti-HIV Agents').

[Rule 32] [Pos cover = 12 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Adrenergic Antagonists'), target_action(B,'D(2) dopamine receptor',antagonist).

[Rule 34] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   target(B,'Gamma-aminobutyric acid receptor subunit alpha-2','Human'), target_action(A,'Beta-1 adrenergic receptor',antagonist).

[Rule 35] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   target(B,'Adenosine receptor A2a','Human'), target_action(A,'Beta-1 adrenergic receptor',antagonist).

[Rule 42] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   target(A,'Gamma-aminobutyric acid receptor subunit alpha-2','Human'), target_action(B,'Beta-1 adrenergic receptor',antagonist).

[Rule 43] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   target(A,'Gamma-aminobutyric acid receptor subunit alpha-2','Human'), target_polypeptide(B,'Kappa-type opioid receptor','Kappa-type opioid receptor','Opioid receptor activity').

[Rule 45] [Pos cover = 7 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Anticonvulsants'), target(A,'Gamma-aminobutyric acid receptor subunit alpha-2','Human').

[Rule 46] [Pos cover = 9 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Antipsychotic Agents'), target(A,'Gamma-aminobutyric acid receptor subunit alpha-1','Human').

[Rule 49] [Pos cover = 16 Neg cover = 2]
drug_interaction(A,B) :-
   category(A,'Antihypertensive Agents'), word2vec(B,C), target_action(C,'Sodium-dependent noradrenaline transporter',inhibitor).

[Rule 51] [Pos cover = 13 Neg cover = 1]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Analgesics'), target(A,'Gamma-aminobutyric acid receptor subunit alpha-2','Human').

[Rule 55] [Pos cover = 9 Neg cover = 3]
drug_interaction(A,B) :-
   category(A,'Antipsychotic Agents'), target(B,'Gamma-aminobutyric acid receptor subunit alpha-1','Human').

[Rule 56] [Pos cover = 12 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Adrenergic Antagonists'), category(A,'Antiemetics').

[Rule 58] [Pos cover = 7 Neg cover = 0]
drug_interaction(A,B) :-
   state(B,solid), category(A,'Antipsychotic Agents'), target(B,'D(2) dopamine receptor','Human').

[Rule 59] [Pos cover = 6 Neg cover = 1]
drug_interaction(A,B) :-
   state(A,solid), category(B,'Antidiuretic Agents'), category(A,'Analgesics').

[Rule 60] [Pos cover = 18 Neg cover = 2]
drug_interaction(A,B) :-
   category(A,'Alkaloids'), target(B,'Sodium-dependent serotonin transporter','Human'), word2vec(A,C).

[Rule 61] [Pos cover = 8 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Amino acids, peptides, and analogues'), category(A,'Alkaloids'), affected_organism(B,'Human Immunodeficiency Virus'), word2vec(A,C).

[Rule 62] [Pos cover = 9 Neg cover = 3]
drug_interaction(A,B) :-
   target(A,'Kappa-type opioid receptor','Human'), word2vec(B,C), target(C,'Sodium channel protein type 5 subunit alpha','Human').

[Rule 63] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   target(A,'Kappa-type opioid receptor','Human'), word2vec(B,C), target(C,'Solute carrier family 12 member 1','Human').

[Rule 64] [Pos cover = 9 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Acids, Acyclic'), target(A,'Kappa-type opioid receptor','Human').

[Rule 66] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   class(B,'Thienopyridines'), category(A,'Alkaloids').

[Rule 67] [Pos cover = 13 Neg cover = 1]
drug_interaction(A,B) :-
   state(A,solid), category(A,'Analgesics'), target(B,'Sodium channel protein type 1 subunit alpha','Human').

[Rule 68] [Pos cover = 7 Neg cover = 1]
drug_interaction(A,B) :-
   state(A,solid), subclass(B,'Delta valerolactones'), word2vec(A,C), subclass(C,'Benzenesulfonamides').

[Rule 69] [Pos cover = 17 Neg cover = 1]
drug_interaction(A,B) :-
   state(A,solid), property(B,logP,'3.9'), word2vec(A,C), subclass(C,'Benzenesulfonamides').

[Rule 70] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   target(B,'Gamma-aminobutyric acid receptor subunit alpha-2','Human'), word2vec(A,C), category(C,'Amides'), category(C,'Amines').

[Rule 71] [Pos cover = 8 Neg cover = 1]
drug_interaction(A,B) :-
   state(A,solid), subclass(B,'Phenols and derivatives'), word2vec(A,C), subclass(C,'Benzenesulfonamides').

[Rule 72] [Pos cover = 9 Neg cover = 3]
drug_interaction(A,B) :-
   target_action(B,'Mu-type opioid receptor',agonist), word2vec(A,C), subclass(C,'Benzenesulfonamides'), category(C,'Amides').

[Rule 74] [Pos cover = 8 Neg cover = 0]
drug_interaction(A,B) :-
   state(A,solid), subclass(B,'Imidazolidines'), word2vec(A,C), subclass(C,'Benzenesulfonamides').

[Rule 75] [Pos cover = 8 Neg cover = 0]
drug_interaction(A,B) :-
   state(A,solid), class(B,'Thienopyridines'), word2vec(A,C), subclass(C,'Benzenesulfonamides').

[Rule 77] [Pos cover = 13 Neg cover = 5]
drug_interaction(A,B) :-
   category(B,'Antipsychotic Agents'), word2vec(A,C), subclass(C,'Benzenesulfonamides'), category(C,'Amides').

[Rule 79] [Pos cover = 9 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Antineoplastic Agents'), property(B,'Hydrophobicity','-0.415').

[Rule 80] [Pos cover = 7 Neg cover = 4]
drug_interaction(A,B) :-
   category(B,'Anticonvulsants'), category(A,'Cardiovascular Agents'), word2vec(A,C), affected_organism(C,'Human Immunodeficiency Virus').

[Rule 89] [Pos cover = 10 Neg cover = 5]
drug_interaction(A,B) :-
   subclass(A,'Imidazolidines'), word2vec(B,C), category(C,'Cardiovascular Agents'), category(C,'Cardiovascular System').

[Rule 91] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Analgesics, Non-Narcotic'), word2vec(A,C), property(C,'Water Solubility','Slightly soluble').

[Rule 93] [Pos cover = 9 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), word2vec(A,C), property(C,'Melting Point','349.84 °C').

[Rule 96] [Pos cover = 17 Neg cover = 3]
drug_interaction(A,B) :-
   target(A,'Estrogen receptor','Human'), word2vec(B,C), subclass(C,'Benzenesulfonamides').

[Rule 98] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   target(B,'Beta-1 adrenergic receptor','Human'), word2vec(A,C), category(C,'Alkaloids'), category(C,'Anti-Dyskinesia Agents').

[Rule 105] [Pos cover = 25 Neg cover = 8]
drug_interaction(A,B) :-
   state(B,solid), target_action(A,'Sodium-dependent serotonin transporter',inhibitor), word2vec(B,C), target(C,'D(2) dopamine receptor','Human').

[Rule 107] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   target_action(A,'Sodium-dependent serotonin transporter',inhibitor), word2vec(B,C), state(C,solid), subclass(C,'Amino Acids, Peptides, and Analogues').

[Rule 108] [Pos cover = 17 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Adrenergic Agents'), target_action(A,'Sodium-dependent serotonin transporter',inhibitor).

[Rule 109] [Pos cover = 6 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Acids, Acyclic'), target_action(A,'Sodium-dependent serotonin transporter',inhibitor).

[Rule 111] [Pos cover = 18 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Alkaloids'), target(A,'Sodium-dependent serotonin transporter','Human'), word2vec(B,C).

[Rule 113] [Pos cover = 10 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Steroid lactones'), category(B,'Antineoplastic Agents').

[Rule 114] [Pos cover = 12 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Adrenergic Antagonists'), category(A,'Anti-Arrhythmia Agents').

[Rule 117] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Amides'), category(A,'Anti-Arrhythmia Agents'), affected_organism(B,'Humans and other mammals').

[Rule 123] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Amino acids, peptides, and analogues'), category(B,'Antipsychotic Agents'), word2vec(A,C), target_action(C,'D(2) dopamine receptor',antagonist).

[Rule 129] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Adrenergic Antagonists'), target_polypeptide(A,'Adenosine receptor A2a','Adenosine receptor A2a','Identical protein binding').

[Rule 131] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   property(B,logP,'2.9'), property(A,logP,'3.9'), word2vec(B,C), category(C,'Alimentary Tract and Metabolism').

[Rule 132] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   target_polypeptide(A,'Adenosine receptor A2a','Adenosine receptor A2a','Identical protein binding'), word2vec(B,C), category(C,'Acetanilides').

[Rule 134] [Pos cover = 8 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Antimalarials'), target_action(B,'D(2) dopamine receptor',antagonist).

[Rule 137] [Pos cover = 6 Neg cover = 4]
drug_interaction(A,B) :-
   subclass(A,'Amino acids, peptides, and analogues'), target(B,'Estrogen receptor','Human'), word2vec(A,C), category(C,'Alimentary Tract and Metabolism').

[Rule 147] [Pos cover = 12 Neg cover = 2]
drug_interaction(A,B) :-
   word2vec(A,C), word2vec(C,B), category(B,'Cardiovascular Agents').

[Rule 150] [Pos cover = 7 Neg cover = 3]
drug_interaction(A,B) :-
   state(A,solid), category(B,'Analgesics, Non-Narcotic'), word2vec(A,C), subclass(C,'Phenol ethers').

[Rule 151] [Pos cover = 9 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Alkaloids'), category(A,'Anti-HIV Agents'), word2vec(B,C).

[Rule 152] [Pos cover = 13 Neg cover = 2]
drug_interaction(A,B) :-
   target_action(B,'Sodium-dependent serotonin transporter',inhibitor), target_polypeptide(A,'D(2) dopamine receptor','D(2) dopamine receptor','Potassium channel regulator activity').

[Rule 153] [Pos cover = 15 Neg cover = 0]
drug_interaction(A,B) :-
   target(B,'Kappa-type opioid receptor','Human'), target(A,'D(2) dopamine receptor','Human').

[Rule 157] [Pos cover = 10 Neg cover = 4]
drug_interaction(A,B) :-
   state(B,solid), category(A,'Alpha1 Antagonists'), word2vec(B,C), property(C,'Water Solubility','Insoluble').

[Rule 161] [Pos cover = 8 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Antimalarials'), category(A,'Antiemetics').

[Rule 170] [Pos cover = 6 Neg cover = 1]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Analgesics'), category(A,'Antidiuretic Agents').

[Rule 182] [Pos cover = 6 Neg cover = 3]
drug_interaction(A,B) :-
   category(A,'Adrenergic Uptake Inhibitors'), target(B,'D(2) dopamine receptor','Human').

[Rule 183] [Pos cover = 6 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(B,'Amino acids, peptides, and analogues'), category(B,'Anti-HIV Agents'), word2vec(A,C), subclass(C,'Triterpenoids').

[Rule 184] [Pos cover = 8 Neg cover = 4]
drug_interaction(A,B) :-
   category(A,'Adrenergic Uptake Inhibitors'), word2vec(B,C), subclass(C,'Benzenesulfonamides'), category(C,'Amides').

[Rule 193] [Pos cover = 17 Neg cover = 1]
drug_interaction(A,B) :-
   category(A,'Adrenergic Agents'), target_action(B,'Sodium-dependent serotonin transporter',inhibitor).

[Rule 208] [Pos cover = 7 Neg cover = 5]
drug_interaction(A,B) :-
   subclass(B,'Phenylbutylamines'), word2vec(A,C), target(C,'D(4) dopamine receptor','Human').

[Rule 209] [Pos cover = 11 Neg cover = 3]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Analgesics'), category(A,'Amides'), affected_organism(A,'Humans and other mammals').

[Rule 211] [Pos cover = 7 Neg cover = 3]
drug_interaction(A,B) :-
   state(B,solid), property(A,'Water Solubility','2400 mg/L (at 25 °C)'), word2vec(B,C), category(C,'Anti-HIV Agents').

[Rule 212] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(A,'Amides'), affected_organism(A,'Humans and other mammals'), target(B,'Gamma-aminobutyric acid receptor subunit alpha-1','Human').

[Rule 217] [Pos cover = 7 Neg cover = 3]
drug_interaction(A,B) :-
   state(A,solid), property(B,'Water Solubility','2400 mg/L (at 25 °C)'), word2vec(A,C), category(C,'Anti-HIV Agents').

[Rule 219] [Pos cover = 7 Neg cover = 3]
drug_interaction(A,B) :-
   target(B,'Estrogen receptor','Human'), word2vec(A,C), subclass(C,'Amino acids, peptides, and analogues'), category(C,'Anti-HIV Agents').

[Rule 241] [Pos cover = 12 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Antidepressive Agents'), category(A,'Antidepressive Agents').

[Rule 242] [Pos cover = 17 Neg cover = 3]
drug_interaction(A,B) :-
   target_action(A,'Sodium-dependent serotonin transporter',inhibitor), word2vec(B,C), subclass(C,'Benzenesulfonamides'), word2vec(A,D).

[Rule 244] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Antimalarials'), target(A,'Sodium-dependent serotonin transporter','Human'), word2vec(A,C).

[Rule 246] [Pos cover = 7 Neg cover = 1]
drug_interaction(A,B) :-
   category(A,'Amines'), property(B,'Water Solubility','149 mg/L (at 20 °C)'), word2vec(A,C).

[Rule 248] [Pos cover = 9 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Antipsychotic Agents'), target_action(A,'Sodium-dependent serotonin transporter',inhibitor).

[Rule 272] [Pos cover = 6 Neg cover = 4]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), category(A,'Antineoplastic Agents'), category(A,'Antineoplastic and Immunomodulating Agents'), word2vec(A,C), 
   category(C,'Anticoagulants').

[Rule 312] [Pos cover = 13 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Adrenergic Antagonists'), category(A,'Antihypertensive Agents').

[Rule 326] [Pos cover = 13 Neg cover = 1]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Analgesics'), target(A,'Sodium channel protein type 1 subunit alpha','Human').

[Rule 336] [Pos cover = 14 Neg cover = 3]
drug_interaction(A,B) :-
   state(B,solid), target(A,'P2Y purinoceptor 12','Human'), word2vec(B,C), subclass(C,'Benzenesulfonamides').

[Rule 338] [Pos cover = 8 Neg cover = 4]
drug_interaction(A,B) :-
   state(A,solid), subclass(A,'Phenothiazines'), word2vec(B,C), subclass(C,'Benzenesulfonamides'), 
   category(C,'Amides').

[Rule 340] [Pos cover = 9 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Antineoplastic Agents'), property(A,'Hydrophobicity','-0.415').

[Rule 342] [Pos cover = 7 Neg cover = 2]
drug_interaction(A,B) :-
   state(B,solid), subclass(A,'Tetrazoles'), word2vec(B,C), category(C,'Anti-HIV Agents').

[Rule 359] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   target(B,'Estrogen receptor','Human'), target(A,'Gamma-aminobutyric acid receptor subunit alpha-1','Human').

[Rule 374] [Pos cover = 10 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Steroid lactones'), category(A,'Antineoplastic Agents').

[Rule 387] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Amino acids, peptides, and analogues'), category(A,'Antipsychotic Agents'), word2vec(B,C), target_action(C,'D(2) dopamine receptor',antagonist).

[Rule 401] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   property(B,'Water Solubility','Insoluble'), word2vec(A,C), target(C,'Sodium channel protein type 5 subunit alpha','Human').

[Rule 461] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Amides'), affected_organism(B,'Humans and other mammals'), target(A,'Gamma-aminobutyric acid receptor subunit alpha-1','Human').

[Training set performance]
            Actual
        +          -  
     + 901        258        1159 
Pred 
     - 429        8312        8741 

       1330        8570        9900 

Accuracy = 0.9306060606060607
[Training set summary] [[901,258,429,8312]]
[Test set performance]
              Actual
         +            -   
     +  2859          4192          7051  
Pred 
     - 12315        141034        153349 

       15174        145226        160400 

Accuracy = 0.8970885286783042
[Test set summary] [[2859,4192,12315,141034]]
[time taken] [22345.356]
[total clauses constructed] [5240507]
true.
