[theory]

[Rule 1] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(A,'Diphenylmethanes'), category(B,'Anti-Arrhythmia Agents').

[Rule 2] [Pos cover = 18 Neg cover = 4]
drug_interaction(A,B) :-
   category(A,'Analgesics, Opioid'), target(B,'Muscarinic acetylcholine receptor M1','Human').

[Rule 4] [Pos cover = 8 Neg cover = 1]
drug_interaction(A,B) :-
   category(A,'Analgesics, Opioid'), word2vec(B,C), category(C,'Anti-Asthmatic Agents').

[Rule 7] [Pos cover = 8 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Anti-Dyskinesia Agents'), category(A,'Analgesics, Opioid').

[Rule 8] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), category(A,'Analgesics'), word2vec(B,C), subclass(C,'Tetrazoles').

[Rule 11] [Pos cover = 27 Neg cover = 10]
drug_interaction(A,B) :-
   subclass(A,'Diphenylmethanes'), category(B,'Central Nervous System Agents').

[Rule 12] [Pos cover = 8 Neg cover = 0]
drug_interaction(A,B) :-
   target(A,'Alpha-2B adrenergic receptor','Human'), target_action(B,'GABA-A receptor (anion channel)','positive allosteric modulator').

[Rule 13] [Pos cover = 14 Neg cover = 0]
drug_interaction(A,B) :-
   target(A,'Alpha-2B adrenergic receptor','Human'), target_polypeptide(B,'D(2) dopamine receptor','D(2) dopamine receptor','Potassium channel regulator activity').

[Rule 16] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   target(B,'Catechol O-methyltransferase','Human'), target(A,'Alpha-2B adrenergic receptor','Human').

[Rule 18] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Analgesics, Opioid'), target(A,'Alpha-2B adrenergic receptor','Human').

[Rule 19] [Pos cover = 7 Neg cover = 1]
drug_interaction(A,B) :-
   category(A,'Adrenergic Agents'), word2vec(B,C), property(C,'Water Solubility','1.69E+004 mg/L (at 25 °C)').

[Rule 20] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(A,'Adrenergic Agents'), word2vec(B,C), property(C,'Melting Point','180-181 °C').

[Rule 23] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   property(A,logP,'-2'), target(B,'D(2) dopamine receptor','Human').

[Rule 28] [Pos cover = 8 Neg cover = 4]
drug_interaction(A,B) :-
   state(A,solid), category(A,'Antineoplastic Agents'), property(B,logP,'3.9').

[Rule 30] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   category(A,'Antibodies'), target(B,'Integrin alpha-4','Human').

[Rule 31] [Pos cover = 8 Neg cover = 1]
drug_interaction(A,B) :-
   class(B,'Macrolide lactams'), category(A,'Antibodies').

[Rule 32] [Pos cover = 8 Neg cover = 5]
drug_interaction(A,B) :-
   subclass(B,'Steroid lactones'), word2vec(A,C), word2vec(C,D), category(D,'Acids, Acyclic').

[Rule 43] [Pos cover = 8 Neg cover = 4]
drug_interaction(A,B) :-
   category(B,'Adrenergic Agents'), category(A,'Adrenergic Agents').

[Rule 46] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Aminoglycosides'), category(A,'Amides').

[Rule 47] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(A,'Phenol ethers'), target(B,'5-hydroxytryptamine receptor 3A','Human').

[Rule 48] [Pos cover = 9 Neg cover = 6]
drug_interaction(A,B) :-
   category(A,'Anti-Arrhythmia Agents'), target(B,'D(2) dopamine receptor','Human').

[Rule 51] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Amides'), category(A,'Aminoglycosides').

[Rule 53] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   target_action(B,'D(2) dopamine receptor',antagonist), word2vec(A,C), property(C,'Water Solubility','14.1 mg/L').

[Rule 54] [Pos cover = 9 Neg cover = 1]
drug_interaction(A,B) :-
   affected_organism(A,'Human Immunodeficiency Virus'), target(B,'D(2) dopamine receptor','Human').

[Rule 55] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Alimentary Tract and Metabolism'), category(A,'Contraceptive Agents'), word2vec(B,C), category(C,'Alimentary Tract and Metabolism').

[Rule 59] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   target(B,'Glucocorticoid receptor','Human'), target_polypeptide(A,'Potassium voltage-gated channel subfamily H member 2','Potassium voltage-gated channel subfamily H member 2','Voltage-gated potassium channel activity involved in ventricular cardiac muscle cell action potential repolarization').

[Rule 61] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Alkaloids'), target_polypeptide(A,'Potassium voltage-gated channel subfamily H member 2','Potassium voltage-gated channel subfamily H member 2','Voltage-gated potassium channel activity involved in ventricular cardiac muscle cell action potential repolarization'), word2vec(B,C), category(C,'Antineoplastic Agents').

[Rule 62] [Pos cover = 13 Neg cover = 0]
drug_interaction(A,B) :-
   target(B,'D(2) dopamine receptor','Human'), target_polypeptide(A,'Potassium voltage-gated channel subfamily H member 2','Potassium voltage-gated channel subfamily H member 2','Voltage-gated potassium channel activity involved in ventricular cardiac muscle cell action potential repolarization').

[Rule 63] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Diphenylmethanes'), target_polypeptide(A,'Potassium voltage-gated channel subfamily H member 2','Potassium voltage-gated channel subfamily H member 2','Voltage-gated potassium channel activity involved in ventricular cardiac muscle cell action potential repolarization').

[Rule 64] [Pos cover = 7 Neg cover = 2]
drug_interaction(A,B) :-
   target_polypeptide(A,'Potassium voltage-gated channel subfamily H member 2','Potassium voltage-gated channel subfamily H member 2','Voltage-gated potassium channel activity involved in ventricular cardiac muscle cell action potential repolarization'), word2vec(B,C), target(C,'5-hydroxytryptamine receptor 1D','Human').

[Rule 68] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   affected_organism(B,'Human Immunodeficiency Virus'), target_polypeptide(A,'Potassium voltage-gated channel subfamily H member 2','Potassium voltage-gated channel subfamily H member 2','Voltage-gated potassium channel activity involved in ventricular cardiac muscle cell action potential repolarization').

[Rule 77] [Pos cover = 12 Neg cover = 0]
drug_interaction(A,B) :-
   target(B,'Catechol O-methyltransferase','Human'), target(A,'5-hydroxytryptamine receptor 2A','Human').

[Rule 78] [Pos cover = 83 Neg cover = 26]
drug_interaction(A,B) :-
   category(B,'Central Nervous System Agents'), target(A,'5-hydroxytryptamine receptor 2A','Human').

[Rule 80] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   state(B,solid), subclass(A,'Steroid lactones'), word2vec(B,C), target(C,'Histamine H1 receptor','Human').

[Rule 84] [Pos cover = 16 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Steroid lactones'), category(B,'Antineoplastic Agents').

[Rule 92] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   affected_organism(B,'Human Immunodeficiency Virus'), affected_organism(A,'Humans and other mammals'), word2vec(A,C), category(C,'Antiinfectives').

[Rule 95] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(A,'Alimentary Tract and Metabolism'), property(B,logP,'3.9'), word2vec(A,C).

[Rule 97] [Pos cover = 6 Neg cover = 4]
drug_interaction(A,B) :-
   property(A,'Melting Point','114 °C'), target(B,'D(2) dopamine receptor','Human').

[Rule 108] [Pos cover = 8 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), category(A,'Agents Acting on the Renin-Angiotensin System').

[Rule 109] [Pos cover = 25 Neg cover = 11]
drug_interaction(A,B) :-
   subclass(A,'Imidazoles'), category(B,'Central Nervous System Agents').

[Rule 114] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   category(A,'Alimentary Tract and Metabolism'), target(B,'Glucocorticoid receptor','Human'), word2vec(A,C), category(C,'Alimentary Tract and Metabolism').

[Rule 120] [Pos cover = 8 Neg cover = 1]
drug_interaction(A,B) :-
   class(A,'Macrolide lactams'), category(B,'Antibodies').

[Rule 122] [Pos cover = 8 Neg cover = 4]
drug_interaction(A,B) :-
   state(B,solid), class(A,'Macrolide lactams'), category(B,'Antineoplastic Agents').

[Rule 124] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Antibodies'), target(A,'Integrin alpha-4','Human').

[Rule 129] [Pos cover = 16 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Steroid lactones'), category(A,'Antineoplastic Agents').

[Rule 146] [Pos cover = 7 Neg cover = 2]
drug_interaction(A,B) :-
   subclass(B,'Phenylpiperidines'), word2vec(A,C), category(C,'Anti-Asthmatic Agents').

[Rule 147] [Pos cover = 13 Neg cover = 1]
drug_interaction(A,B) :-
   target(A,'5-hydroxytryptamine receptor 3A','Human'), target_action(B,'5-hydroxytryptamine receptor 2A',antagonist).

[Rule 154] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Alpha1 Antagonists'), word2vec(A,C), subclass(C,'Cyclopyrrolones').

[Rule 155] [Pos cover = 10 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Alkaloids'), target(B,'D(2) dopamine receptor','Human'), word2vec(A,C), category(C,'Antineoplastic Agents').

[Rule 156] [Pos cover = 9 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(B,'Diphenylmethanes'), word2vec(A,C), category(C,'Anti-Asthmatic Agents').

[Rule 157] [Pos cover = 7 Neg cover = 4]
drug_interaction(A,B) :-
   state(B,solid), superclass(A,'Alkaloids and derivatives'), category(B,'Antineoplastic Agents'), affected_organism(B,'Humans and other mammals').

[Rule 171] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Alkaloids'), target(A,'Glucocorticoid receptor','Human').

[Rule 172] [Pos cover = 6 Neg cover = 4]
drug_interaction(A,B) :-
   target(A,'Glucocorticoid receptor','Human'), target_polypeptide(B,'D(2) dopamine receptor','D(2) dopamine receptor','Potassium channel regulator activity').

[Rule 191] [Pos cover = 9 Neg cover = 6]
drug_interaction(A,B) :-
   category(B,'Anti-Arrhythmia Agents'), target(A,'D(2) dopamine receptor','Human').

[Rule 192] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   property(B,logP,'-2'), target(A,'D(2) dopamine receptor','Human').

[Rule 194] [Pos cover = 7 Neg cover = 4]
drug_interaction(A,B) :-
   property(A,'Water Solubility','2.55 mg/L (at 24 °C)'), word2vec(B,C), word2vec(C,D), category(D,'Antihypertensive Agents').

[Rule 195] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   category(A,'Antiemetics'), word2vec(B,C), property(C,'Water Solubility','14.1 mg/L').

[Rule 197] [Pos cover = 14 Neg cover = 4]
drug_interaction(A,B) :-
   category(A,'Antiemetics'), word2vec(B,C), state(C,solid), property(C,'Water Solubility','Insoluble').

[Rule 203] [Pos cover = 8 Neg cover = 0]
drug_interaction(A,B) :-
   target(B,'Alpha-2B adrenergic receptor','Human'), target(A,'GABA-A receptor (anion channel)','Human').

[Rule 205] [Pos cover = 18 Neg cover = 0]
drug_interaction(A,B) :-
   target(A,'GABA-A receptor (anion channel)','Human'), target_polypeptide(B,'5-hydroxytryptamine receptor 2A','5-hydroxytryptamine receptor 2A','Virus receptor activity').

[Rule 208] [Pos cover = 15 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Antineoplastic Agents'), category(A,'Angiogenesis Inhibitors').

[Rule 209] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Alimentary Tract and Metabolism'), property(A,logP,'3.9'), word2vec(B,C).

[Rule 211] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Antineoplastic and Immunomodulating Agents'), property(A,logP,'3.9').

[Rule 217] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), property(A,'Hydrophobicity','-0.414').

[Rule 219] [Pos cover = 12 Neg cover = 0]
drug_interaction(A,B) :-
   target(A,'Catechol O-methyltransferase','Human'), target_polypeptide(B,'5-hydroxytryptamine receptor 2A','5-hydroxytryptamine receptor 2A','Virus receptor activity').

[Rule 220] [Pos cover = 7 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Central Nervous System Agents'), target(A,'Catechol O-methyltransferase','Human'), word2vec(B,C), category(C,'Alimentary Tract and Metabolism').

[Rule 252] [Pos cover = 14 Neg cover = 3]
drug_interaction(A,B) :-
   subclass(B,'Diphenylmethanes'), target_action(A,'Muscarinic acetylcholine receptor M1',antagonist).

[Rule 261] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   target(B,'Sodium-dependent noradrenaline transporter','Human'), word2vec(A,C), subclass(C,'Tetrazoles').

[Rule 265] [Pos cover = 16 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), word2vec(A,C), word2vec(C,D), subclass(D,'Tetrazoles').

[Rule 272] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Antineoplastic Agents, Hormonal'), property(A,'Melting Point','114 °C').

[Rule 324] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Benzoquinolines'), target(A,'D(2) dopamine receptor','Human').

[Rule 350] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   subclass(A,'Piperazines'), category(B,'Alimentary Tract and Metabolism'), word2vec(B,C).

[Rule 444] [Pos cover = 15 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Angiogenesis Inhibitors'), category(A,'Antineoplastic Agents').

[Training set performance]
            Actual
        +          -  
     + 580        159        739 
Pred 
     - 412        8749        9161 

       992        8908        9900 

Accuracy = 0.9423232323232323
[Training set summary] [[580,159,412,8749]]
[Test set performance]
              Actual
         +            -   
     +  2108          4309          6417  
Pred 
     - 14538        139445        153983 

       16646        143754        160400 

Accuracy = 0.8825
[Test set summary] [[2108,4309,14538,139445]]
[time taken] [31739.083]
[total clauses constructed] [4576494]
true.
