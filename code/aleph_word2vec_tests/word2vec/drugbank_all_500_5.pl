[theory]

[Rule 1] [Pos cover = 9 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), category(A,'ACE Inhibitors and Diuretics').

[Rule 2] [Pos cover = 35 Neg cover = 25]
drug_interaction(A,B) :-
   state(B,solid), state(A,solid), subclass(B,'Dibenzazepines'), affected_organism(A,'Humans and other mammals').

[Rule 5] [Pos cover = 8 Neg cover = 4]
drug_interaction(A,B) :-
   category(B,'Analgesics'), word2vec(A,C), class(C,'Homogeneous other non-metal compounds').

[Rule 7] [Pos cover = 10 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Anticoagulants'), target(B,'Estrogen receptor','Human').

[Rule 8] [Pos cover = 18 Neg cover = 12]
drug_interaction(A,B) :-
   category(B,'Analgesics'), category(A,'Anticoagulants').

[Rule 9] [Pos cover = 14 Neg cover = 2]
drug_interaction(A,B) :-
   target(A,'Vitamin K epoxide reductase complex subunit 1','Human'), word2vec(B,C), affected_organism(C,'Streptococcus pyogenes').

[Rule 11] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Alimentary Tract and Metabolism'), target(A,'Vitamin K epoxide reductase complex subunit 1','Human'), word2vec(B,C), category(C,'Amides').

[Rule 15] [Pos cover = 20 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Anticoagulants'), category(A,'Anticoagulants').

[Rule 16] [Pos cover = 24 Neg cover = 4]
drug_interaction(A,B) :-
   category(A,'Anticoagulants'), word2vec(B,C), category(C,'Anticoagulants').

[Rule 17] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Anti-Arrhythmia Agents'), target(A,'D(2) dopamine receptor','Human').

[Rule 18] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   target(B,'5-hydroxytryptamine receptor 1D','Human'), target(A,'D(2) dopamine receptor','Human').

[Rule 19] [Pos cover = 12 Neg cover = 1]
drug_interaction(A,B) :-
   target(A,'D(2) dopamine receptor','Human'), target_action(B,'Histamine H1 receptor',antagonist).

[Rule 20] [Pos cover = 8 Neg cover = 0]
drug_interaction(A,B) :-
   target(A,'D(2) dopamine receptor','Human'), target_action(B,'Sodium-dependent serotonin transporter',inhibitor).

[Rule 21] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Alpha1 Antagonists'), word2vec(B,C), subclass(C,'Phenols and derivatives').

[Rule 22] [Pos cover = 12 Neg cover = 2]
drug_interaction(A,B) :-
   category(A,'Alpha1 Antagonists'), word2vec(B,C), word2vec(C,D), category(D,'Anti-Anxiety Agents').

[Rule 23] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   target(A,'D(2) dopamine receptor','Human'), word2vec(B,C), class(C,'Homogeneous other non-metal compounds').

[Rule 27] [Pos cover = 9 Neg cover = 0]
drug_interaction(A,B) :-
   target(A,'D(2) dopamine receptor','Human'), word2vec(B,C), subclass(C,'Benzenesulfonamides').

[Rule 31] [Pos cover = 8 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Acids, Acyclic'), affected_organism(B,'Humans and other mammals'), target(A,'D(2) dopamine receptor','Human').

[Rule 38] [Pos cover = 27 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Cardiovascular Agents'), category(A,'Alpha1 Antagonists').

[Rule 40] [Pos cover = 9 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Adrenal Cortex Hormones'), category(A,'Analgesics').

[Rule 42] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'ACE Inhibitors and Diuretics'), category(A,'Analgesics').

[Rule 43] [Pos cover = 5 Neg cover = 2]
drug_interaction(A,B) :-
   property(A,'Melting Point','71 °C (whole mAb)'), word2vec(B,C), word2vec(C,D), category(D,'Anticoagulants').

[Rule 44] [Pos cover = 16 Neg cover = 14]
drug_interaction(A,B) :-
   category(A,'Analgesics'), word2vec(B,C), category(C,'Adrenergic Antagonists').

[Rule 45] [Pos cover = 8 Neg cover = 4]
drug_interaction(A,B) :-
   category(B,'Anticoagulants'), category(A,'Analgesics'), target(B,'Vitamin K epoxide reductase complex subunit 1','Human').

[Rule 47] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   class(B,'Pteridines and derivatives'), category(A,'Analgesics').

[Rule 50] [Pos cover = 8 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Amino Acids, Peptides, and Proteins'), target(A,'Prostaglandin G/H synthase 2','Human'), word2vec(B,C), category(C,'Anticoagulants').

[Rule 53] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Estrane steroids'), category(B,'Anticoagulants').

[Rule 57] [Pos cover = 7 Neg cover = 4]
drug_interaction(A,B) :-
   state(A,solid), category(B,'Anti-HIV Agents'), category(A,'Alimentary Tract and Metabolism').

[Rule 58] [Pos cover = 10 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Alpha2 Agonists'), category(A,'Antidepressive Agents').

[Rule 60] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Antidepressive Agents'), pathway(B,'Thyroid hormone synthesis',metabolic), target(B,'Thyroid hormone receptor alpha','Human').

[Rule 61] [Pos cover = 9 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Diphenylmethanes'), category(A,'Antidepressive Agents'), affected_organism(B,'Humans and other mammals').

[Rule 63] [Pos cover = 27 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), target(A,'Sodium-dependent noradrenaline transporter','Human').

[Rule 68] [Pos cover = 32 Neg cover = 28]
drug_interaction(A,B) :-
   state(B,solid), subclass(A,'Steroid lactones'), affected_organism(B,'Humans and other mammals').

[Rule 69] [Pos cover = 11 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Analgesics'), category(A,'Anti-Arrhythmia Agents').

[Rule 70] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Anti-Arrhythmia Agents'), word2vec(B,C), word2vec(C,D), property(D,'Melting Point','191 °C').

[Rule 76] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Diphenylmethanes'), subclass(A,'Sulfinylbenzimidazoles'), affected_organism(B,'Humans and other mammals').

[Rule 79] [Pos cover = 9 Neg cover = 0]
drug_interaction(A,B) :-
   state(A,solid), target(B,'Lanosterol 14-alpha demethylase','Yeast'), word2vec(A,C), subclass(C,'Isoindolines').

[Rule 83] [Pos cover = 24 Neg cover = 16]
drug_interaction(A,B) :-
   state(A,solid), subclass(B,'Phenylacetamides'), affected_organism(A,'Humans and other mammals'), word2vec(A,C).

[Rule 87] [Pos cover = 9 Neg cover = 4]
drug_interaction(A,B) :-
   state(A,solid), subclass(B,'Dibenzodiazepines'), word2vec(A,C), category(C,'Adrenergic Agents').

[Rule 89] [Pos cover = 23 Neg cover = 17]
drug_interaction(A,B) :-
   state(A,solid), subclass(B,'Steroid lactones'), affected_organism(A,'Humans and other mammals'), word2vec(A,C).

[Rule 90] [Pos cover = 9 Neg cover = 6]
drug_interaction(A,B) :-
   class(B,'Naphthalenes'), affected_organism(A,'Humans and other mammals'), word2vec(A,C), category(C,'Adrenergic Agents').

[Rule 92] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Benzoquinolines'), word2vec(B,C), subclass(C,'Benzenesulfonamides').

[Rule 101] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(B,'Hydropyridines'), word2vec(A,C), subclass(C,'Benzenesulfonamides').

[Rule 102] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   property(B,'Water Solubility','Very slightly soluble'), word2vec(A,C), category(C,'Amides'), category(C,'Amines').

[Rule 103] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   target(B,'Vitamin K epoxide reductase complex subunit 1','Human'), word2vec(A,C), category(C,'Amides'), category(C,'Amines').

[Rule 104] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Benzoquinolines'), word2vec(A,C), subclass(C,'Benzenesulfonamides').

[Rule 107] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Sulfinylbenzimidazoles'), subclass(A,'Diphenylmethanes'), affected_organism(A,'Humans and other mammals').

[Rule 108] [Pos cover = 7 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(A,'Diphenylmethanes'), affected_organism(A,'Humans and other mammals'), target(B,'5-hydroxytryptamine receptor 3A','Human').

[Rule 109] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   subclass(A,'Diphenylmethanes'), word2vec(B,C), target(C,'Sodium channel protein type 1 subunit alpha','Human').

[Rule 111] [Pos cover = 6 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(A,'Diphenylmethanes'), category(B,'Antihistamines for Systemic Use'), affected_organism(A,'Humans and other mammals').

[Rule 112] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   category(A,'Carbamates'), target(B,'Histamine H1 receptor','Human').

[Rule 120] [Pos cover = 12 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Anti-Bacterial Agents'), target(B,'Vitamin K epoxide reductase complex subunit 1','Human'), word2vec(A,C), category(C,'Central Nervous System Agents').

[Rule 122] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Acids, Carbocyclic'), category(A,'Adrenal Cortex Hormones').

[Rule 127] [Pos cover = 9 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Analgesics'), category(A,'Adrenal Cortex Hormones').

[Rule 128] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Adrenal Cortex Hormones'), word2vec(B,C), property(C,'Melting Point','191 °C').

[Rule 147] [Pos cover = 8 Neg cover = 5]
drug_interaction(A,B) :-
   category(A,'Anti-HIV Agents'), word2vec(B,C), category(C,'Cardiovascular Agents'), category(C,'Cardiovascular System').

[Rule 149] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   target(A,'Androgen receptor','Human'), word2vec(B,C), property(C,'Melting Point','191 °C').

[Rule 154] [Pos cover = 7 Neg cover = 2]
drug_interaction(A,B) :-
   target(A,'ATP-sensitive inward rectifier potassium channel 1','Human'), word2vec(B,C), category(C,'Azaspirodecanedione Derivatives').

[Rule 155] [Pos cover = 7 Neg cover = 3]
drug_interaction(A,B) :-
   target_action(B,'D(2) dopamine receptor',antagonist), word2vec(A,C), category(C,'Anti-Dyskinesia Agents').

[Rule 165] [Pos cover = 43 Neg cover = 13]
drug_interaction(A,B) :-
   category(B,'Cardiovascular Agents'), word2vec(B,C), word2vec(A,D), category(D,'Adrenergic Antagonists').

[Rule 166] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Sulfinylbenzimidazoles'), word2vec(A,C), property(C,'Melting Point','191 °C').

[Rule 169] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Hydropyridines'), word2vec(A,C), category(C,'Anti-Acne Preparations'), affected_organism(C,'Enteric bacteria and other eubacteria').

[Rule 170] [Pos cover = 9 Neg cover = 0]
drug_interaction(A,B) :-
   target(B,'5-hydroxytryptamine receptor 3A','Human'), word2vec(A,C), property(C,'Melting Point','191 °C').

[Rule 174] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(B,'Benzoquinolines'), target(A,'Sodium-dependent serotonin transporter','Human').

[Rule 177] [Pos cover = 14 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Antidepressive Agents'), target(A,'Histamine H1 receptor','Human').

[Rule 194] [Pos cover = 15 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Antidepressive Agents'), word2vec(A,C), category(C,'Calcium Channel Blockers').

[Rule 196] [Pos cover = 6 Neg cover = 4]
drug_interaction(A,B) :-
   category(B,'Adrenal Cortex Hormones'), word2vec(A,C), category(C,'Calcium Channel Blockers').

[Rule 207] [Pos cover = 10 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Antidepressive Agents'), category(A,'Alpha2 Agonists').

[Rule 236] [Pos cover = 18 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Acids'), category(A,'Antihypertensive Agents').

[Rule 237] [Pos cover = 18 Neg cover = 0]
drug_interaction(A,B) :-
   category(A,'Antihypertensive Agents'), word2vec(B,C), subclass(C,'Phenols and derivatives'), category(C,'Adrenergic Agents').

[Rule 239] [Pos cover = 20 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Cardiovascular Agents'), category(A,'Arteriolar Smooth Muscle, Agents Acting On'), word2vec(B,C).

[Rule 259] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Phenylacetamides'), word2vec(B,C), category(C,'Adrenergic Agents'), target(C,'Alpha-1B adrenergic receptor','Human').

[Rule 309] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   property(A,'Water Solubility','Very slightly soluble'), target(B,'Lanosterol 14-alpha demethylase','Yeast').

[Rule 311] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Cardiovascular System'), property(A,'Hydrophobicity','-0.728'), word2vec(B,C).

[Rule 327] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Anticoagulants'), property(A,'Hydrophobicity','-0.728').

[Rule 353] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   class(A,'Pteridines and derivatives'), category(B,'Analgesics').

[Rule 375] [Pos cover = 11 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Anti-Arrhythmia Agents'), category(A,'Analgesics').

[Rule 500] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   class(A,'Pteridines and derivatives'), word2vec(B,C), target(C,'Voltage-dependent L-type calcium channel subunit alpha-1C','Human').

[Training set performance]
            Actual
        +          -  
     + 679        209        888 
Pred 
     - 511        8501        9012 

       1190        8710        9900 

Accuracy = 0.9272727272727272
[Training set summary] [[679,209,511,8501]]
[Test set performance]
              Actual
         +            -   
     +  2354          4264          6618  
Pred 
     - 13742        140040        153782 

       16096        144304        160400 

Accuracy = 0.8877431421446385
[Test set summary] [[2354,4264,13742,140040]]
[time taken] [41417.498]
[total clauses constructed] [5403567]
true.
