[theory]

[Rule 1] [Pos cover = 9 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), category(A,'ACE Inhibitors and Diuretics').

[Rule 2] [Pos cover = 35 Neg cover = 25]
drug_interaction(A,B) :-
   state(B,solid), state(A,solid), subclass(B,'Dibenzazepines'), affected_organism(A,'Humans and other mammals').

[Rule 7] [Pos cover = 10 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Anticoagulants'), target(B,'Estrogen receptor','Human').

[Rule 8] [Pos cover = 18 Neg cover = 12]
drug_interaction(A,B) :-
   category(B,'Analgesics'), category(A,'Anticoagulants').

[Rule 9] [Pos cover = 15 Neg cover = 11]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Anti-Infective Agents'), target(A,'Vitamin K epoxide reductase complex subunit 1','Human').

[Rule 10] [Pos cover = 33 Neg cover = 27]
drug_interaction(A,B) :-
   state(A,solid), class(B,'Benzene and substituted derivatives'), affected_organism(A,'Humans and other mammals').

[Rule 16] [Pos cover = 20 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Anticoagulants'), category(A,'Anticoagulants').

[Rule 17] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Anticoagulants'), property(B,'Hydrophobicity','-0.728').

[Rule 18] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Anti-Arrhythmia Agents'), target(A,'D(2) dopamine receptor','Human').

[Rule 19] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   target(B,'5-hydroxytryptamine receptor 1D','Human'), target(A,'D(2) dopamine receptor','Human').

[Rule 20] [Pos cover = 12 Neg cover = 1]
drug_interaction(A,B) :-
   target(A,'D(2) dopamine receptor','Human'), target_action(B,'Histamine H1 receptor',antagonist).

[Rule 23] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'14-alpha Demethylase Inhibitors'), category(A,'Antiemetics Antagonists').

[Rule 28] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(B,'Sulfinylbenzimidazoles'), target(A,'D(2) dopamine receptor','Human').

[Rule 31] [Pos cover = 7 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(B,'Diphenylmethanes'), category(A,'Antiemetics Antagonists'), affected_organism(B,'Humans and other mammals').

[Rule 32] [Pos cover = 8 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Acids, Acyclic'), affected_organism(B,'Humans and other mammals'), target(A,'D(2) dopamine receptor','Human').

[Rule 33] [Pos cover = 17 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), category(A,'Alpha1 Antagonists').

[Rule 34] [Pos cover = 8 Neg cover = 0]
drug_interaction(A,B) :-
   target(B,'5-hydroxytryptamine receptor 3A','Human'), target(A,'D(2) dopamine receptor','Human').

[Rule 42] [Pos cover = 9 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Adrenal Cortex Hormones'), category(A,'Analgesics').

[Rule 44] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'ACE Inhibitors and Diuretics'), category(A,'Analgesics').

[Rule 47] [Pos cover = 18 Neg cover = 12]
drug_interaction(A,B) :-
   category(B,'Anticoagulants'), category(A,'Analgesics').

[Rule 49] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   class(B,'Pteridines and derivatives'), category(A,'Analgesics').

[Rule 57] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Estrane steroids'), category(B,'Anticoagulants').

[Rule 61] [Pos cover = 7 Neg cover = 4]
drug_interaction(A,B) :-
   state(A,solid), category(B,'Anti-HIV Agents'), category(A,'Alimentary Tract and Metabolism').

[Rule 62] [Pos cover = 10 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Alpha2 Agonists'), category(A,'Antidepressive Agents').

[Rule 63] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Antidepressive Agents'), pathway(B,'Thyroid hormone synthesis',metabolic), target(B,'Thyroid hormone receptor alpha','Human').

[Rule 64] [Pos cover = 9 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Diphenylmethanes'), category(A,'Antidepressive Agents'), affected_organism(B,'Humans and other mammals').

[Rule 66] [Pos cover = 27 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), target(A,'Sodium-dependent noradrenaline transporter','Human').

[Rule 68] [Pos cover = 7 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Amides'), category(A,'Antidepressive Agents'), affected_organism(B,'Humans and other mammals').

[Rule 71] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Alpha2 Agonists'), category(A,'Anti-Arrhythmia Agents').

[Rule 72] [Pos cover = 12 Neg cover = 10]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Alimentary Tract and Metabolism'), category(A,'Anti-Arrhythmia Agents').

[Rule 73] [Pos cover = 11 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Analgesics'), category(A,'Anti-Arrhythmia Agents').

[Rule 75] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Amides'), category(A,'Anti-Arrhythmia Agents'), affected_organism(B,'Humans and other mammals').

[Rule 81] [Pos cover = 13 Neg cover = 6]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), category(A,'Anti-Arrhythmia Agents').

[Rule 82] [Pos cover = 7 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Steroid lactones'), category(B,'Antineoplastic Agents').

[Rule 85] [Pos cover = 7 Neg cover = 1]
drug_interaction(A,B) :-
   state(B,solid), category(A,'Anti-Arrhythmia Agents'), target(B,'Histamine H1 receptor','Human').

[Rule 90] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Diphenylmethanes'), subclass(A,'Sulfinylbenzimidazoles'), affected_organism(B,'Humans and other mammals').

[Rule 91] [Pos cover = 7 Neg cover = 2]
drug_interaction(A,B) :-
   target(A,'5-hydroxytryptamine receptor 1A','Human'), target_polypeptide(B,'Lanosterol 14-alpha demethylase','Lanosterol 14-alpha demethylase','Sterol 14-demethylase activity').

[Rule 122] [Pos cover = 11 Neg cover = 3]
drug_interaction(A,B) :-
   subclass(A,'Diphenylmethanes'), affected_organism(A,'Humans and other mammals'), target(B,'Muscarinic acetylcholine receptor M1','Human').

[Rule 123] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Sulfinylbenzimidazoles'), subclass(A,'Diphenylmethanes'), affected_organism(A,'Humans and other mammals').

[Rule 127] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   category(A,'Carbamates'), target(B,'Histamine H1 receptor','Human').

[Rule 135] [Pos cover = 12 Neg cover = 2]
drug_interaction(A,B) :-
   state(A,solid), category(A,'Anti-Bacterial Agents'), target(B,'Vitamin K epoxide reductase complex subunit 1','Human').

[Rule 137] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Acids, Carbocyclic'), category(A,'Adrenal Cortex Hormones').

[Rule 142] [Pos cover = 9 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Analgesics'), category(A,'Adrenal Cortex Hormones').

[Rule 180] [Pos cover = 9 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Analgesics'), category(A,'Agents Acting on the Renin-Angiotensin System').

[Rule 181] [Pos cover = 11 Neg cover = 3]
drug_interaction(A,B) :-
   subclass(A,'Tetrazoles'), category(B,'Cardiovascular Agents').

[Rule 191] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(B,'Benzoquinolines'), target(A,'Sodium-dependent serotonin transporter','Human').

[Rule 193] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(A,'Diphenylmethanes'), category(B,'Anti-Arrhythmia Agents'), affected_organism(A,'Humans and other mammals').

[Rule 195] [Pos cover = 14 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Antidepressive Agents'), target(A,'Histamine H1 receptor','Human').

[Rule 203] [Pos cover = 12 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(B,'Diphenylmethanes'), affected_organism(B,'Humans and other mammals'), target(A,'Histamine H1 receptor','Human').

[Rule 212] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'14-alpha Demethylase Inhibitors'), target(B,'D(2) dopamine receptor','Human').

[Rule 218] [Pos cover = 11 Neg cover = 9]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Alimentary Tract and Metabolism'), category(A,'14-alpha Demethylase Inhibitors'), affected_organism(B,'Humans and other mammals').

[Rule 220] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   target(B,'Aryl hydrocarbon receptor','Human'), target(A,'Lanosterol 14-alpha demethylase','Yeast').

[Rule 235] [Pos cover = 9 Neg cover = 3]
drug_interaction(A,B) :-
   category(A,'Alpha2 Agonists'), target(B,'Sodium-dependent noradrenaline transporter','Human').

[Rule 250] [Pos cover = 90 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), category(A,'Antihypertensive Agents').

[Rule 253] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   category(A,'Antihypertensive Agents'), property(B,'Hydrophobicity','-0.728').

[Rule 254] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Hydropyridines'), category(B,'Antifungal Agents').

[Rule 255] [Pos cover = 27 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(A,'Hydropyridines'), category(B,'Cardiovascular Agents').

[Rule 256] [Pos cover = 7 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Steroid lactones'), category(A,'Antineoplastic Agents').

[Rule 269] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   class(A,'Stilbenes'), category(B,'Anticoagulants').

[Rule 323] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(A,'Isoindolines'), category(B,'Analgesics').

[Rule 340] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   property(A,'Water Solubility','Very slightly soluble'), target(B,'Lanosterol 14-alpha demethylase','Yeast').

[Rule 342] [Pos cover = 9 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Cardiovascular Agents'), category(B,'Cardiovascular System'), property(A,'Hydrophobicity','-0.728').

[Rule 357] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Anticoagulants'), property(A,'Hydrophobicity','-0.728').

[Rule 359] [Pos cover = 8 Neg cover = 1]
drug_interaction(A,B) :-
   target_action(B,'D(2) dopamine receptor',antagonist), target_action(A,'Histamine H1 receptor',antagonist).

[Rule 370] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   subclass(B,'Dibenzodiazepines'), category(A,'Antihypertensive Agents').

[Rule 383] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   class(A,'Pteridines and derivatives'), category(B,'Analgesics').

[Rule 393] [Pos cover = 7 Neg cover = 4]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Alimentary Tract and Metabolism'), category(A,'Anti-HIV Agents').

[Rule 409] [Pos cover = 11 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Anti-Arrhythmia Agents'), category(A,'Analgesics').

[Rule 564] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   class(A,'Pteridines and derivatives'), category(B,'Antihypertensive Agents').

[Training set performance]
            Actual
        +          -  
     + 619        183        802 
Pred 
     - 571        8527        9098 

       1190        8710        9900 

Accuracy = 0.9238383838383838
[Training set summary] [[619,183,571,8527]]
[Test set performance]
              Actual
         +            -   
     +  2014          2866          4880  
Pred 
     - 14082        141438        155520 

       16096        144304        160400 

Accuracy = 0.8943391521197007
[Test set summary] [[2014,2866,14082,141438]]
[time taken] [1682.75]
[total clauses constructed] [4528552]
true.
