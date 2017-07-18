[theory]

[Rule 1] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(A,'Diphenylmethanes'), category(B,'Anti-Arrhythmia Agents').

[Rule 2] [Pos cover = 18 Neg cover = 4]
drug_interaction(A,B) :-
   category(A,'Analgesics, Opioid'), target(B,'Muscarinic acetylcholine receptor M1','Human').

[Rule 8] [Pos cover = 8 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Anti-Dyskinesia Agents'), category(A,'Analgesics, Opioid').

[Rule 12] [Pos cover = 27 Neg cover = 10]
drug_interaction(A,B) :-
   subclass(A,'Diphenylmethanes'), category(B,'Central Nervous System Agents').

[Rule 13] [Pos cover = 8 Neg cover = 0]
drug_interaction(A,B) :-
   target(A,'Alpha-2B adrenergic receptor','Human'), target_action(B,'GABA-A receptor (anion channel)','positive allosteric modulator').

[Rule 14] [Pos cover = 14 Neg cover = 0]
drug_interaction(A,B) :-
   target(A,'Alpha-2B adrenergic receptor','Human'), target_polypeptide(B,'D(2) dopamine receptor','D(2) dopamine receptor','Potassium channel regulator activity').

[Rule 17] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   target(B,'Catechol O-methyltransferase','Human'), target(A,'Alpha-2B adrenergic receptor','Human').

[Rule 19] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Analgesics, Opioid'), target(A,'Alpha-2B adrenergic receptor','Human').

[Rule 20] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Agents Acting on the Renin-Angiotensin System'), category(A,'Adrenergic Agents').

[Rule 22] [Pos cover = 14 Neg cover = 4]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), category(A,'Adrenergic Agents').

[Rule 24] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   property(A,logP,'-2'), target(B,'D(2) dopamine receptor','Human').

[Rule 29] [Pos cover = 8 Neg cover = 3]
drug_interaction(A,B) :-
   state(A,solid), category(A,'Antineoplastic Agents'), affected_organism(A,'Humans and other mammals'), property(B,logP,'3.9').

[Rule 31] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   category(A,'Antibodies'), target(B,'Integrin alpha-4','Human').

[Rule 32] [Pos cover = 8 Neg cover = 1]
drug_interaction(A,B) :-
   class(B,'Macrolide lactams'), category(A,'Antibodies').

[Rule 47] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Aminoglycosides'), category(A,'Amides').

[Rule 48] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(A,'Phenol ethers'), target(B,'5-hydroxytryptamine receptor 3A','Human').

[Rule 49] [Pos cover = 9 Neg cover = 6]
drug_interaction(A,B) :-
   category(A,'Anti-Arrhythmia Agents'), target(B,'D(2) dopamine receptor','Human').

[Rule 52] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Amides'), category(A,'Aminoglycosides').

[Rule 56] [Pos cover = 9 Neg cover = 1]
drug_interaction(A,B) :-
   affected_organism(A,'Human Immunodeficiency Virus'), target(B,'D(2) dopamine receptor','Human').

[Rule 62] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   target(B,'Glucocorticoid receptor','Human'), target_polypeptide(A,'Potassium voltage-gated channel subfamily H member 2','Potassium voltage-gated channel subfamily H member 2','Voltage-gated potassium channel activity involved in ventricular cardiac muscle cell action potential repolarization').

[Rule 65] [Pos cover = 13 Neg cover = 0]
drug_interaction(A,B) :-
   target(B,'D(2) dopamine receptor','Human'), target_polypeptide(A,'Potassium voltage-gated channel subfamily H member 2','Potassium voltage-gated channel subfamily H member 2','Voltage-gated potassium channel activity involved in ventricular cardiac muscle cell action potential repolarization').

[Rule 66] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Diphenylmethanes'), target_polypeptide(A,'Potassium voltage-gated channel subfamily H member 2','Potassium voltage-gated channel subfamily H member 2','Voltage-gated potassium channel activity involved in ventricular cardiac muscle cell action potential repolarization').

[Rule 71] [Pos cover = 8 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Anti-HIV Agents'), target_polypeptide(A,'Potassium voltage-gated channel subfamily H member 2','Potassium voltage-gated channel subfamily H member 2','Voltage-gated potassium channel activity involved in ventricular cardiac muscle cell action potential repolarization').

[Rule 80] [Pos cover = 12 Neg cover = 0]
drug_interaction(A,B) :-
   target(B,'Catechol O-methyltransferase','Human'), target(A,'5-hydroxytryptamine receptor 2A','Human').

[Rule 81] [Pos cover = 83 Neg cover = 26]
drug_interaction(A,B) :-
   category(B,'Central Nervous System Agents'), target(A,'5-hydroxytryptamine receptor 2A','Human').

[Rule 87] [Pos cover = 16 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Steroid lactones'), category(B,'Antineoplastic Agents').

[Rule 101] [Pos cover = 6 Neg cover = 4]
drug_interaction(A,B) :-
   property(A,'Melting Point','114 °C'), target(B,'D(2) dopamine receptor','Human').

[Rule 114] [Pos cover = 8 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), category(A,'Agents Acting on the Renin-Angiotensin System').

[Rule 115] [Pos cover = 25 Neg cover = 11]
drug_interaction(A,B) :-
   subclass(A,'Imidazoles'), category(B,'Central Nervous System Agents').

[Rule 128] [Pos cover = 8 Neg cover = 1]
drug_interaction(A,B) :-
   class(A,'Macrolide lactams'), category(B,'Antibodies').

[Rule 130] [Pos cover = 8 Neg cover = 4]
drug_interaction(A,B) :-
   state(B,solid), class(A,'Macrolide lactams'), category(B,'Antineoplastic Agents').

[Rule 133] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Antibodies'), target(A,'Integrin alpha-4','Human').

[Rule 138] [Pos cover = 16 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Steroid lactones'), category(A,'Antineoplastic Agents').

[Rule 156] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Isoquinolones and derivatives'), target(B,'D(2) dopamine receptor','Human').

[Rule 158] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Blood Glucose Lowering Drugs, Excl. Insulins'), target(B,'Glucocorticoid receptor','Human').

[Rule 167] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   superclass(A,'Alkaloids and derivatives'), target(B,'D(2) dopamine receptor','Human').

[Rule 168] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   subclass(B,'Diphenylmethanes'), category(A,'Alkaloids').

[Rule 169] [Pos cover = 7 Neg cover = 4]
drug_interaction(A,B) :-
   state(B,solid), superclass(A,'Alkaloids and derivatives'), category(B,'Antineoplastic Agents'), affected_organism(B,'Humans and other mammals').

[Rule 184] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Alkaloids'), target(A,'Glucocorticoid receptor','Human').

[Rule 185] [Pos cover = 6 Neg cover = 4]
drug_interaction(A,B) :-
   target(A,'Glucocorticoid receptor','Human'), target_polypeptide(B,'D(2) dopamine receptor','D(2) dopamine receptor','Potassium channel regulator activity').

[Rule 204] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   class(B,'Dibenzocycloheptenes'), target(A,'D(2) dopamine receptor','Human').

[Rule 206] [Pos cover = 9 Neg cover = 6]
drug_interaction(A,B) :-
   category(B,'Anti-Arrhythmia Agents'), target(A,'D(2) dopamine receptor','Human').

[Rule 207] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   property(B,logP,'-2'), target(A,'D(2) dopamine receptor','Human').

[Rule 215] [Pos cover = 14 Neg cover = 1]
drug_interaction(A,B) :-
   property(B,logP,'4'), target(A,'D(2) dopamine receptor','Human').

[Rule 217] [Pos cover = 8 Neg cover = 4]
drug_interaction(A,B) :-
   category(A,'Anti-Dyskinesia Agents'), target(B,'5-hydroxytryptamine receptor 3A','Human').

[Rule 218] [Pos cover = 9 Neg cover = 1]
drug_interaction(A,B) :-
   affected_organism(B,'Human Immunodeficiency Virus'), target(A,'D(2) dopamine receptor','Human').

[Rule 220] [Pos cover = 8 Neg cover = 0]
drug_interaction(A,B) :-
   target(B,'Alpha-2B adrenergic receptor','Human'), target(A,'GABA-A receptor (anion channel)','Human').

[Rule 221] [Pos cover = 15 Neg cover = 0]
drug_interaction(A,B) :-
   target(A,'GABA-A receptor (anion channel)','Human'), target_polypeptide(B,'D(2) dopamine receptor','D(2) dopamine receptor','Potassium channel regulator activity').

[Rule 222] [Pos cover = 29 Neg cover = 7]
drug_interaction(A,B) :-
   category(B,'Analgesics, Opioid'), category(A,'Central Nervous System Agents').

[Rule 225] [Pos cover = 15 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Antineoplastic Agents'), category(A,'Angiogenesis Inhibitors').

[Rule 228] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Antineoplastic and Immunomodulating Agents'), property(A,logP,'3.9').

[Rule 236] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), property(A,'Hydrophobicity','-0.414').

[Rule 238] [Pos cover = 24 Neg cover = 12]
drug_interaction(A,B) :-
   category(B,'Central Nervous System Agents'), target(A,'Catechol O-methyltransferase','Human').

[Rule 269] [Pos cover = 14 Neg cover = 1]
drug_interaction(A,B) :-
   property(A,logP,'4'), target(B,'D(2) dopamine receptor','Human').

[Rule 296] [Pos cover = 14 Neg cover = 3]
drug_interaction(A,B) :-
   subclass(B,'Diphenylmethanes'), target_action(A,'Muscarinic acetylcholine receptor M1',antagonist).

[Rule 312] [Pos cover = 14 Neg cover = 4]
drug_interaction(A,B) :-
   category(B,'Adrenergic Agents'), category(A,'Antihypertensive Agents').

[Rule 344] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Benzoquinolines'), target(A,'D(2) dopamine receptor','Human').

[Rule 375] [Pos cover = 6 Neg cover = 4]
drug_interaction(A,B) :-
   property(B,'Melting Point','114 °C'), target(A,'D(2) dopamine receptor','Human').

[Rule 485] [Pos cover = 15 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Angiogenesis Inhibitors'), category(A,'Antineoplastic Agents').

[Training set performance]
            Actual
        +          -  
     + 527        139        666 
Pred 
     - 465        8769        9234 

       992        8908        9900 

Accuracy = 0.938989898989899
[Training set summary] [[527,139,465,8769]]
[Test set performance]
              Actual
         +            -   
     +  2276          3162          5438  
Pred 
     - 14370        140592        154962 

       16646        143754        160400 

Accuracy = 0.8906982543640898
[Test set summary] [[2276,3162,14370,140592]]
[time taken] [1438.41]
[total clauses constructed] [3688148]
true.
