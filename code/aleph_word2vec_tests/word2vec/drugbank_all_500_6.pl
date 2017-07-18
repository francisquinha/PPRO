[theory]

[Rule 1] [Pos cover = 10 Neg cover = 3]
drug_interaction(A,B) :-
   category(A,'Acids, Heterocyclic'), word2vec(B,C), target(C,'Sodium channel protein type 1 subunit alpha','Human').

[Rule 2] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   affected_organism(B,'Human Immunodeficiency Virus'), word2vec(A,C), category(C,'Calcium Channel Blockers').

[Rule 4] [Pos cover = 15 Neg cover = 9]
drug_interaction(A,B) :-
   target(B,'Kappa-type opioid receptor','Human'), word2vec(A,C), target(C,'Voltage-dependent L-type calcium channel subunit alpha-1C','Human').

[Rule 7] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), category(A,'Acids, Heterocyclic'), word2vec(B,C), state(C,liquid).

[Rule 8] [Pos cover = 55 Neg cover = 31]
drug_interaction(A,B) :-
   category(A,'Central Nervous System Agents'), word2vec(B,C), target(C,'Sodium channel protein type 1 subunit alpha','Human').

[Rule 9] [Pos cover = 42 Neg cover = 10]
drug_interaction(A,B) :-
   category(A,'Central Nervous System Agents'), target(B,'Histamine H2 receptor','Human').

[Rule 10] [Pos cover = 240 Neg cover = 32]
drug_interaction(A,B) :-
   category(B,'Central Nervous System Depressants'), category(A,'Central Nervous System Agents').

[Rule 11] [Pos cover = 11 Neg cover = 4]
drug_interaction(A,B) :-
   state(A,solid), category(A,'Central Nervous System Agents'), affected_organism(B,'Human Immunodeficiency Virus').

[Rule 12] [Pos cover = 7 Neg cover = 1]
drug_interaction(A,B) :-
   category(A,'Alimentary Tract and Metabolism'), target(B,'Kappa-type opioid receptor','Human'), word2vec(A,C), property(C,'Water Solubility','Insoluble').

[Rule 13] [Pos cover = 6 Neg cover = 3]
drug_interaction(A,B) :-
   category(A,'Alimentary Tract and Metabolism'), target(B,'D(2) dopamine receptor','Human'), word2vec(A,C), property(C,'Water Solubility','Insoluble').

[Rule 14] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   property(A,logP,'2.7'), word2vec(B,C), subclass(C,'Imidazolidines').

[Rule 28] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(A,'Triterpenoids'), word2vec(B,C), subclass(C,'Imidazolidines').

[Rule 31] [Pos cover = 6 Neg cover = 3]
drug_interaction(A,B) :-
   category(A,'Antibodies'), target(B,'Integrin alpha-4','Human').

[Rule 39] [Pos cover = 20 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Analgesics'), target(A,'D(3) dopamine receptor','Human').

[Rule 44] [Pos cover = 8 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Adrenergic Agents'), target(A,'D(1A) dopamine receptor','Human').

[Rule 48] [Pos cover = 7 Neg cover = 4]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), target(A,'D(1A) dopamine receptor','Human').

[Rule 53] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   subclass(B,'Triterpenoids'), word2vec(A,C), subclass(C,'Imidazolidines').

[Rule 54] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(A,'Alimentary Tract and Metabolism'), affected_organism(B,'Human Immunodeficiency Virus'), word2vec(A,C), subclass(C,'Amino acids, peptides, and analogues').

[Rule 55] [Pos cover = 9 Neg cover = 2]
drug_interaction(A,B) :-
   target_action(B,'Histamine H1 receptor',antagonist), word2vec(A,C), subclass(C,'Imidazolidines').

[Rule 56] [Pos cover = 8 Neg cover = 2]
drug_interaction(A,B) :-
   class(A,'Tetracyclines'), word2vec(B,C), category(C,'Amides'), affected_organism(C,'Humans and other mammals').

[Rule 57] [Pos cover = 5 Neg cover = 1]
drug_interaction(A,B) :-
   property(B,logP,'2.7'), word2vec(A,C), subclass(C,'Imidazolidines').

[Rule 58] [Pos cover = 8 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Adjuvants, Anesthesia'), word2vec(A,C), subclass(C,'Imidazolidines').

[Rule 59] [Pos cover = 5 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Acids, Acyclic'), category(A,'Alimentary Tract and Metabolism'), word2vec(A,C), subclass(C,'Imidazolidines').

[Rule 63] [Pos cover = 6 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), word2vec(A,C), subclass(C,'Tertiary amines').

[Rule 66] [Pos cover = 5 Neg cover = 2]
drug_interaction(A,B) :-
   state(A,solid), subclass(B,'Imidazoles'), category(A,'Antineoplastic Agents'), affected_organism(A,'Humans and other mammals').

[Rule 67] [Pos cover = 8 Neg cover = 1]
drug_interaction(A,B) :-
   category(A,'Antineoplastic Agents'), affected_organism(A,'Humans and other mammals'), target(B,'Integrin alpha-4','Human').

[Rule 70] [Pos cover = 6 Neg cover = 3]
drug_interaction(A,B) :-
   category(A,'Antihypertensive Agents'), target(B,'Gamma-aminobutyric acid receptor subunit alpha-1','Human'), word2vec(A,C), state(C,solid).

[Rule 72] [Pos cover = 9 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Antineoplastic Agents'), target(A,'Integrin alpha-4','Human').

[Rule 83] [Pos cover = 10 Neg cover = 2]
drug_interaction(A,B) :-
   target_action(B,'Histamine H1 receptor',antagonist), word2vec(A,C), category(C,'ACE Inhibitors and Calcium Channel Blockers').

[Rule 88] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Alimentary Tract and Metabolism'), affected_organism(A,'Human Immunodeficiency Virus'), word2vec(B,C), subclass(C,'Amino acids, peptides, and analogues').

[Rule 90] [Pos cover = 8 Neg cover = 4]
drug_interaction(A,B) :-
   subclass(A,'Amino acids, peptides, and analogues'), target(B,'Kappa-type opioid receptor','Human'), word2vec(A,C), category(C,'Cardiovascular Agents').

[Rule 97] [Pos cover = 33 Neg cover = 3]
drug_interaction(A,B) :-
   category(B,'Central Nervous System Agents'), category(A,'Antihistamines for Systemic Use').

[Rule 99] [Pos cover = 6 Neg cover = 3]
drug_interaction(A,B) :-
   state(B,solid), class(A,'Benzocycloheptapyridines'), word2vec(B,C), category(C,'Anti-HIV Agents').

[Rule 106] [Pos cover = 5 Neg cover = 0]
drug_interaction(A,B) :-
   category(B,'Cardiovascular Agents'), category(A,'ACE Inhibitors and Calcium Channel Blockers'), word2vec(B,C).

[Rule 110] [Pos cover = 17 Neg cover = 2]
drug_interaction(A,B) :-
   category(B,'Antihypertensive Agents'), category(A,'Cardiovascular Agents'), word2vec(A,C).

[Rule 128] [Pos cover = 6 Neg cover = 4]
drug_interaction(A,B) :-
   state(B,solid), subclass(A,'Imidazoles'), word2vec(B,C), target_action(C,'Muscarinic acetylcholine receptor M2',antagonist).

[Rule 129] [Pos cover = 18 Neg cover = 1]
drug_interaction(A,B) :-
   category(B,'Analgesics'), category(A,'Adjuvants').

[Rule 166] [Pos cover = 36 Neg cover = 4]
drug_interaction(A,B) :-
   category(B,'Analgesics'), target(A,'5-hydroxytryptamine receptor 1A','Human').

[Rule 182] [Pos cover = 11 Neg cover = 4]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Central Nervous System Agents'), affected_organism(A,'Human Immunodeficiency Virus').

[Rule 183] [Pos cover = 11 Neg cover = 4]
drug_interaction(A,B) :-
   state(B,solid), category(B,'Central Nervous System Agents'), property(A,'Water Solubility','3.5 mg/mL').

[Rule 202] [Pos cover = 23 Neg cover = 2]
drug_interaction(A,B) :-
   category(A,'Analgesics'), target(B,'D(2) dopamine receptor','Human'), word2vec(A,C).

[Rule 219] [Pos cover = 5 Neg cover = 3]
drug_interaction(A,B) :-
   property(A,'Water Solubility','77 mg/L (at 25 °C)'), word2vec(B,C), category(C,'Azoles'), word2vec(C,D), 
   category(D,'Anti-HIV Agents').

[Training set performance]
            Actual
        +          -  
     + 566        160        726 
Pred 
     - 270        8200        8470 

       836        8360        9196 

Accuracy = 0.9532405393649412
[Training set summary] [[566,160,270,8200]]
[Test set performance]
              Actual
         +            -   
     +  4490          4352          8842  
Pred 
     - 13210        138348        151558 

       17700        142700        160400 

Accuracy = 0.8905112219451372
[Test set summary] [[4490,4352,13210,138348]]
[time taken] [44985.297]
[total clauses constructed] [2790874]
true.
