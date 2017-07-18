[theory]

[Rule 1] [Pos cover = 8 Neg cover = 3]
drug_interaction(A,B) :-
   category(A,'Alcohols'), category(A,'Amines'), target_action(B,'Beta-1 adrenergic receptor',antagonist).

[Rule 2] [Pos cover = 12 Neg cover = 2]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Analgesics'), target_action(A,'Beta-1 adrenergic receptor',antagonist).

[Rule 6] [Pos cover = 10 Neg cover = 0]
drug_interaction(A,B) :-
   target_action(A,'Beta-1 adrenergic receptor',antagonist), target_polypeptide(B,'Alpha-1A adrenergic receptor','Alpha-1A adrenergic receptor','Protein heterodimerization activity').

[Rule 8] [Pos cover = 12 Neg cover = 0]
drug_interaction(A,B) :-
   target_action(A,'Beta-1 adrenergic receptor',antagonist), target_polypeptide(B,'D(2) dopamine receptor','D(2) dopamine receptor','Potassium channel regulator activity').

[Rule 9] [Pos cover = 6 Neg cover = 3]
drug_interaction(A,B) :-
   target(B,'Gamma-aminobutyric acid receptor subunit alpha-2','Human'), word2vec(A,C), word2vec(C,D), category(D,'Antidepressive Agents').

[Rule 11] [Pos cover = 54 Neg cover = 32]
drug_interaction(A,B) :-
   state(A,solid), category(A,'Central Nervous System Agents'), target(B,'5-hydroxytryptamine receptor 2A','Human').

[Rule 12] [Pos cover = 53 Neg cover = 34]
drug_interaction(A,B) :-
   state(A,solid), category(B,'Anti-Anxiety Agents'), category(A,'Central Nervous System Agents').

[Rule 13] [Pos cover = 16 Neg cover = 9]
drug_interaction(A,B) :-
   class(B,'Morphinans'), category(A,'Central Nervous System Agents').

[Rule 14] [Pos cover = 14 Neg cover = 10]
drug_interaction(A,B) :-
   category(B,'Acetanilides'), category(A,'Central Nervous System Agents').

[Rule 15] [Pos cover = 14 Neg cover = 8]
drug_interaction(A,B) :-
   state(A,solid), category(B,'Adjuvants'), category(A,'Central Nervous System Agents').

[Rule 17] [Pos cover = 13 Neg cover = 8]
drug_interaction(A,B) :-
   state(A,solid), category(A,'Central Nervous System Agents'), property(B,logP,'5.54').

[Rule 20] [Pos cover = 9 Neg cover = 4]
drug_interaction(A,B) :-
   category(B,'Anti-Parkinson Drugs'), category(A,'Alkaloids'), word2vec(A,C), affected_organism(C,'Humans and other mammals').

[Rule 25] [Pos cover = 9 Neg cover = 5]
drug_interaction(A,B) :-
   state(A,solid), subclass(B,'Phenol ethers'), category(A,'Analgesics').

[Rule 27] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Central Nervous System Agents'), target(A,'Dihydrofolate reductase','Human'), word2vec(B,C), category(C,'Alkylating Agents').

[Rule 31] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Tertiary amines'), affected_organism(A,'Humans and other mammals'), word2vec(A,C), target(C,'Prostaglandin G/H synthase 2','Human').

[Rule 34] [Pos cover = 7 Neg cover = 2]
drug_interaction(A,B) :-
   target(A,'Gamma-aminobutyric acid receptor subunit alpha-2','Human'), word2vec(B,C), pathway(C,'Caffeine Metabolism',metabolic).

[Rule 36] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   target(B,'Dihydrofolate reductase','Human'), target(A,'Gamma-aminobutyric acid receptor subunit alpha-2','Human').

[Rule 38] [Pos cover = 6 Neg cover = 3]
drug_interaction(A,B) :-
   target(A,'D(3) dopamine receptor','Human'), word2vec(B,C), pathway(C,'Caffeine Metabolism',metabolic).

[Rule 39] [Pos cover = 12 Neg cover = 0]
drug_interaction(A,B) :-
   target_action(B,'Beta-1 adrenergic receptor',antagonist), target_polypeptide(A,'D(2) dopamine receptor','D(2) dopamine receptor','Potassium channel regulator activity').

[Rule 40] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(B,'Imidazoles'), target(A,'D(2) dopamine receptor','Human').

[Rule 48] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   target_action(B,'5-hydroxytryptamine receptor 2A',antagonist), word2vec(A,C), target(C,'Gonadotropin-releasing hormone receptor','Human').

[Rule 49] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   target(B,'Beta-1 adrenergic receptor','Human'), word2vec(A,C), target_action(C,'Gonadotropin-releasing hormone receptor',agonist).

[Rule 50] [Pos cover = 13 Neg cover = 10]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Central Nervous System Agents'), category(A,'Anti-Allergic Agents').

[Rule 52] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Hydroxysteroids'), property(A,'Melting Point','113-114').

[Rule 63] [Pos cover = 28 Neg cover = 0]
drug_interaction(A,B) :-
   state(A,solid), category(B,'Analgesics'), category(A,'Anti-Inflammatory Agents'), target(B,'Prostaglandin G/H synthase 1','Human').

[Rule 64] [Pos cover = 8 Neg cover = 0]
drug_interaction(A,B) :-
   state(A,solid), subclass(B,'Quinoline carboxylic acids'), category(A,'Anti-Inflammatory Agents').

[Rule 65] [Pos cover = 5 Neg cover = 2]
drug_interaction(A,B) :-
   state(B,solid), subclass(A,'Steroid lactones'), word2vec(B,C), target(C,'D(2) dopamine receptor','Human').

[Rule 67] [Pos cover = 12 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Steroid lactones'), category(B,'Antineoplastic Agents').

[Rule 71] [Pos cover = 6 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Hydroxysteroids'), property(B,'Melting Point','113-114').

[Rule 83] [Pos cover = 8 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Antimalarials'), target_action(A,'D(2) dopamine receptor',antagonist).

[Rule 87] [Pos cover = 9 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Anti-Anxiety Agents'), category(A,'Alpha1 Antagonists').

[Rule 88] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   state(B,solid), target_action(A,'5-hydroxytryptamine receptor 2A',antagonist), word2vec(B,C), category(C,'Antineoplastic Agents, Hormonal').

[Rule 96] [Pos cover = 10 Neg cover = 2]
drug_interaction(A,B) :-
   category(A,'Analgesics, Non-Narcotic'), property(B,logP,'-4.2').

[Rule 109] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(A,'Quinoline carboxylic acids'), category(B,'Analgesics, Non-Narcotic').

[Rule 110] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Anti-Asthmatic Agents'), word2vec(A,C), subclass(C,'Benzoic acids and derivatives'), target(C,'Prostaglandin G/H synthase 2','Human').

[Rule 112] [Pos cover = 13 Neg cover = 5]
drug_interaction(A,B) :-
   subclass(B,'Hydroxysteroids'), word2vec(A,C), word2vec(C,D), target(D,'Prostaglandin G/H synthase 2','Human').

[Rule 118] [Pos cover = 14 Neg cover = 10]
drug_interaction(A,B) :-
   category(A,'Antineoplastic Agents'), word2vec(B,C), subclass(C,'Acetophenones').

[Rule 124] [Pos cover = 8 Neg cover = 4]
drug_interaction(A,B) :-
   subclass(B,'Dibenzodiazepines'), category(A,'Antineoplastic Agents').

[Rule 139] [Pos cover = 9 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Alkaloids'), word2vec(A,C), property(C,'Melting Point','191 °C').

[Rule 140] [Pos cover = 8 Neg cover = 0]
drug_interaction(A,B) :-
   target_action(B,'D(2) dopamine receptor',antagonist), word2vec(A,C), class(C,'Macrolides and analogues').

[Rule 165] [Pos cover = 6 Neg cover = 4]
drug_interaction(A,B) :-
   target(A,'Prostaglandin G/H synthase 1','Human'), word2vec(B,C), class(C,'Benzene and substituted derivatives').

[Rule 171] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   subclass(B,'Aminosaccharides'), category(A,'Analgesics, Non-Narcotic').

[Rule 172] [Pos cover = 15 Neg cover = 3]
drug_interaction(A,B) :-
   subclass(B,'Hydroxysteroids'), category(A,'Analgesics, Non-Narcotic').

[Rule 179] [Pos cover = 11 Neg cover = 3]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Analgesics'), property(A,logP,'-4.2').

[Rule 192] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   state(B,solid), subclass(A,'Aminosaccharides'), category(B,'Analgesics').

[Rule 195] [Pos cover = 8 Neg cover = 4]
drug_interaction(A,B) :-
   subclass(A,'Dibenzodiazepines'), category(B,'Antineoplastic Agents').

[Rule 205] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   subclass(B,'Diphenylmethanes'), category(A,'Anti-Anxiety Agents').

[Rule 215] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Analgesics, Non-Narcotic'), property(A,'Hydrophobicity','-0.424').

[Rule 253] [Pos cover = 13 Neg cover = 1]
drug_interaction(A,B) :-
   target(A,'5-hydroxytryptamine receptor 2A','Human'), target_action(B,'Histamine H1 receptor',antagonist).

[Rule 413] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   category(A,'Analgesics, Non-Narcotic'), property(B,'Hydrophobicity','-0.424').

[Training set performance]
            Actual
        +          -  
     + 490        189        679 
Pred 
     - 368        8391        8759 

       858        8580        9438 

Accuracy = 0.9409832591650773
[Training set summary] [[490,189,368,8391]]
[Test set performance]
              Actual
         +            -   
     +  2150          1774          3924  
Pred 
     - 15162        141314        156476 

       17312        143088        160400 

Accuracy = 0.8944139650872818
[Test set summary] [[2150,1774,15162,141314]]
[time taken] [33817.924]
[total clauses constructed] [3862614]
true.
