
:- modeh(*, drug_interaction(+drug, +drug)).

:- modeb(2, drug(+drug)).
:- modeb(2, state(+drug, #state)).
:- modeb(2, group(+drug, #group)).
:- modeb(2, superclass(+drug, #superclass)).
:- modeb(2, class(+drug, #class)).
:- modeb(2, subclass(+drug, #subclass)).
:- modeb(2, category(+drug, #category)).
:- modeb(2, affected_organism(+drug, #affected_organism)).
:- modeb(2, food_interaction(+drug, #food_interaction)).
:- modeb(2, property(+drug, #kind, #value)).
:- modeb(2, pathway(+drug, #pathway, #category)).
:- modeb(2, pathway_drug(+drug, #pathway, -drug)).
:- modeb(2, target(+drug, #target, #organism)).
:- modeb(2, target_action(+drug, #target, #action)).
:- modeb(2, target_polypeptide(+drug, #target, #polypeptide, #function)).
:- modeb(2, word2vec(+drug, -drug)).

:- determination(drug_interaction/2, drug/1).
:- determination(drug_interaction/2, state/2).
:- determination(drug_interaction/2, group/2).
:- determination(drug_interaction/2, superclass/2).
:- determination(drug_interaction/2, class/2).
:- determination(drug_interaction/2, subclass/2).
:- determination(drug_interaction/2, category/2).
:- determination(drug_interaction/2, affected_organism/2).
:- determination(drug_interaction/2, property/3).
:- determination(drug_interaction/2, pathway/3).
:- determination(drug_interaction/2, pathway_drug/3).
:- determination(drug_interaction/2, target/3).
:- determination(drug_interaction/2, target_action/3).
:- determination(drug_interaction/2, target_polypeptide/4).
:- determination(drug_interaction/2, word2vec/2).

:- symmetric(drug_interaction/2).
