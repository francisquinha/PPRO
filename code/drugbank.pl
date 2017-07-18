:- use_module(library(sgml)).

:- set_prolog_stack(global, limit(100 000 000 000)).

:- dynamic drug/1.
%:- dynamic description/2.
:- dynamic state/1.
:- dynamic state/2.
:- dynamic group/1.
:- dynamic group/2.
/*:- dynamic indication/2.
:- dynamic pharmacodynamics/2.
:- dynamic mechanism_of_action/2.
:- dynamic toxicity/2.
:- dynamic metabolism/2.
:- dynamic absorption/2.
:- dynamic half_life/2.
:- dynamic protein_binding/2.
:- dynamic route_of_elimination/2.*/
:- dynamic direct_parent/1.
:- dynamic kingdom/1.
:- dynamic superclass/1.
:- dynamic class/1.
:- dynamic subclass/1.
:- dynamic superclass/2.
:- dynamic class/2.
:- dynamic subclass/2.
%:- dynamic synonym/1.
/*:- dynamic synonym/2.
:- dynamic product_name/2.
:- dynamic product_route/3.
:- dynamic product_generic/2.
:- dynamic product_over_the_counter/2.
:- dynamic product_approved/2.
:- dynamic mixture_name/2.
:- dynamic mixture_ingredients/3.*/
:- dynamic category/1.
:- dynamic category/2.
:- dynamic affected_organism/1.
:- dynamic affected_organism/2.
:- dynamic food_interaction/1.
:- dynamic food_interaction/2.
:- dynamic drug_interaction/2.
:- dynamic drug_interaction_description/3.
:- dynamic property/3.
:- dynamic pathway/3.
:- dynamic pathway_drug/3.
:- dynamic target/3.
:- dynamic target_action/3.
:- dynamic target_polypeptide/4.
%:- dynamic target_pfam/3.
%:- dynamic target_go_classifier/4.


assert_once(Fact) :- (Fact, !; assertz(Fact)).

assert_drug_count(Name, Number) :- (drug(Name), !; (assertz(drug(Name)), findall(X, drug(X), D), length(D, Number))).

compute_time(Time_0, Time) :- get_time(Time_1), Time is Time_1 - Time_0.

get_drugs(Filename, Drugs) :- load_xml(Filename, Drugbank, [space(remove)]), Drugbank = [element(_, _, Raw_Drugs)],
	findall(Drug, member(element(drug, _, Drug), Raw_Drugs), Drugs).

get_drug_names(Drugs, Names) :- findall(Name, (member(Drug, Drugs), member(element(name, _, [Name]), Drug)), Names).

assert_drug(Drug, Name, Number) :- member(element(name, _, [Name]), Drug), assert_drug_count(Name, Number).

assert_drug(Drug, Name) :- member(element(name, _, [Name]), Drug), assert_once(drug(Name)).

assert_description(Drug, Name) :- member(element(description, _, Descriptions), Drug), 
	(Descriptions = []; (member(Description, Descriptions), assert_once(description(Name, Description)))).

assert_state(Drug, Name) :- member(element(state, _, [State]), Drug), assert_once(state(State)), 
	assert_once(state(Name, State)).

assert_group(Drug, Name) :- member(element(groups, _, Groups), Drug), member(element(group, _, [Group]), Groups), 
	assert_once(group(Group)), assert_once(group(Name, Group)).

assert_indication(Drug, Name) :- member(element(indication, _, Indications), Drug), 
	(Indications = []; (member(Indication, Indications), assert_once(indication(Name, Indication)))).

assert_pharmacodynamics(Drug, Name) :- 	member(element(pharmacodynamics, _, Pharmacodynamicss), Drug), 
	(Pharmacodynamicss = []; (member(Pharmacodynamics, Pharmacodynamicss), 
		assert_once(pharmacodynamics(Name, Pharmacodynamics)))).

assert_mechanism_of_action(Drug, Name) :- member(element(mechanism_of_action, _, Mechanisms), Drug), 
	(Mechanisms = []; (member(Mechanism, Mechanisms), 
		assert_once(mechanism_of_action(Name, Mechanism)))).

assert_toxicity(Drug, Name) :- 	member(element(toxicity, _, Toxicitys), Drug), 
	(Toxicitys = []; (member(Toxicity, Toxicitys), assert_once(toxicity(Name, Toxicity)))).

assert_metabolism(Drug, Name) :- member(element(metabolism, _, Metabolisms), Drug), 
	(Metabolisms = []; (member(Metabolism, Metabolisms), assert_once(metabolism(Name, Metabolism)))).

assert_absortion(Drug, Name) :- member(element(absorption, _, Absorptions), Drug), 
	(Absorptions = []; (member(Absorption, Absorptions), assert_once(absorption(Name, Absorption)))).

assert_half_life(Drug, Name) :- member(element(half_life, _, Lifes), Drug), 
	(Lifes = []; (member(Life, Lifes), assert_once(half_life(Name, Life)))).

assert_protein_binding(Drug, Name) :- member(element(protein_binding, _, Bindings), Drug), 
	(Bindings = []; (member(Binding, Bindings), 
		assert_once(protein_binding(Name, Binding)))).

assert_route_of_elimination(Drug, Name) :- member(element(route_of_elimination, _, Routes), Drug), 
	(Routes = []; (member(Route, Routes), 
		assert_once(route_of_elimination(Name, Route)))).

assert_classification(Drug, Name) :- member(element(classification, _, Classification), Drug),
	member(element(direct_parent, _, [Parent]), Classification),
		assert_once(direct_parent(Parent)), 
	member(element(kingdom, _, [Kingdom]), Classification), 
		assert_once(kingdom(Kingdom)),
	member(element(superclass, _, [Superclass]), Classification), 
		assert_once(superclass(Superclass)),
	member(element(class, _, Classs), Classification), 
		(Classs = [], assert_once(superclass(Name, Superclass)); 
		(member(Class, Classs), assert_once(class(Class)),
			member(element(subclass, _, Subclasss), Classification), 
			(Subclasss = [], assert_once(class(Name, Class));
				(member(Subclass, Subclasss), assert_once(subclass(Subclass)),
					assert_once(subclass(Name, Subclass)))))).

assert_synonim(Drug, Name) :- member(element(synonyms, _, Synonyms), Drug),
		(Synonyms = []; (member(element(synonym, _, [Synonym]), Synonyms), assert_once(synonym(Synonym)),
			assert_once(synonym(Name, Synonym)))).

assert_product(Drug, Name) :- member(element(products, _, Products), Drug), 
	(Products = []; (member(element(product, _, Product), Products),
	member(element(name, _, [Product_Name]), Product), assert_once(product_name(Name, Product_Name)),
	member(element(route, _, Product_Routes), Product), (Product_Routes = []; (member(Product_Route, Product_Routes), 
		assert_once(product_route(Name, Product_Name, Product_Route)))),
	member(element(generic, _, Generic), Product), (Generic = ['false']; 
		(Generic = ['true']), assert_once(product_generic(Name, Product_Name))),
	member(element(over_the_counter, _, Over), Product), (Over = ['false']; 
		(Over = ['true']), assert_once(product_over_the_counter(Name, Product_Name))),
	member(element(approved, _, Approved), Product), (Approved = ['false']; 
		(Approved = ['true']), assert_once(product_approved(Name, Product_Name))))).

assert_mixture(Drug, Name) :- member(element(mixtures, _, Mixtures), Drug), 
	(Mixtures = []; (member(element(mixture, _, Mixture), Mixtures),
	member(element(name, _, [Mixture_Name]), Mixture), assert_once(mixture_name(Name, Mixture_Name)),
	member(element(ingredients, _, [Mixture_Ingredients]), Mixture), 
		assert_once(mixture_ingredients(Name, Mixture_Name, Mixture_Ingredients)))).

assert_category(Drug, Name) :- member(element(categories, _, Categories), Drug),
	(Categories = []; (member(element(category, _, [element(category, _, [Category])]), Categories), 
		assert_once(category(Category)), assert_once(category(Name, Category)))).

assert_affected_organism(Drug, Name) :- member(element(affected_organisms, _, Organisms), Drug),
	(Organisms = []; (member(element(affected_organism, _, [Organism]), Organisms), 
		assert_once(affected_organism(Organism)), 
		assert_once(affected_organism(Name, Organism)))).

assert_food_interaction(Drug, Name) :- member(element(food_interactions, _, Interactions), Drug),
	(Interactions = []; (member(element(food_interaction, _, [Interaction]), Interactions), 
		assert_once(food_interaction(Interaction)), assert_once(food_interaction(Name, Interaction)))).

assert_drug_interaction(Drug, Name) :- member(element(drug_interactions, _, Interactions), Drug), 
	(Interactions = []; (member(element(drug_interaction, _, Interaction), Interactions),
		member(element(name, _, [Drug_Name]), Interaction), assert_once(drug_interaction(Name, Drug_Name)),
		member(element(description, _, [Description]), Interaction), 
			assert_once(drug_interaction_description(Name, Drug_Name, Description)))).

assert_property(Drug, Name) :- member(element(experimental_properties, _, Properties), Drug),
	(Properties = []; (member(element(property, _, Property), Properties), 
		member(element(kind, _, [Kind]), Property), member(element(value, _, [Value]), Property),
		assert_once(property(Name, Kind, Value)))).

assert_pathway(Drug, Name) :- member(element(pathways, _, Pathways), Drug),
	(Pathways = []; (member(element(pathway, _, Pathway), Pathways),
		member(element(name, _, [Pathway_Name]), Pathway), member(element(category, _, [Category]), Pathway),
		assert_once(pathway(Name, Pathway_Name, Category)), member(element(drugs, _, Drugs), Pathway),
		(Drugs = []; (member(element(drug, _, Pathway_Drug), Drugs), 
			member(element(name, _, [Drug_Name]), Pathway_Drug), 
			assert_once(pathway_drug(Name, Pathway_Name, Drug_Name)))))).

assert_target(Drug, Name) :- member(element(targets, _, Targets), Drug),
	(Targets = []; (member(element(target, _, Target), Targets),
		member(element(name, _, [Target_Name]), Target), member(element(organism, _, [Organism]), Target),
		assert_once(target(Name, Target_Name, Organism)), member(element(actions, _, Actions), Target), 
		(Actions = []; (member(element(action, _, [Action]), Actions), 
			assert_once(target_action(Name, Target_Name, Action)))),
		member(element(polypeptide, _, Polypeptide), Target), 
		member(element(name, _, [Polypeptide_Name]), Polypeptide),
		member(element(general_function, _, [Function]), Polypeptide), 
		assert_once(target_polypeptide(Name, Target_Name, Polypeptide_Name, Function))/*, 
		member(element(pfams, _, Pfams), Polypeptide), 
		(Pfams = []; (member(element(pfam, _, Pfam), Pfams), member(element(name, _, [Pfam_Name]), Pfam), 
			assert_once(target_pfam(Name, Target_Name, Pfam_Name)))),
		member(element(go_classifiers, _, Classifiers), Polypeptide),
		(Classifiers = []; (member(element(go_classifier, _, Classifier), Classifiers), 
			member(element(category, _, [Category]), Classifier), 
			member(element(description, _, [Description]), Classifier),
			assert_once(target_go_classifier(Name, Target_Name, Category, Description))))*/)).

retract_drug_interaction(Drug1, Drug2) :- (drug(Drug1), drug(Drug2), !; 
	(retractall(drug_interaction(Drug1, Drug2)), retractall(drug_interaction_description(Drug1, Drug2, _)))).

retract_drug_interactions :- drug_interaction(Drug1, Drug2), retract_drug_interaction(Drug1, Drug2), false.

symmetry_drug_interactions :- drug_interaction(Drug1, Drug2), assert_once(drug_interaction(Drug2, Drug1)), false.

assert_all_xml(Drugs) :- /*get_time(Time_0),*/ 
	member(Drug, Drugs),
/*	assert_drug(Drug, Name, Number), write(Number), write('  -  '), compute_time(Time_0, Time), writeln(Time),*/
	assert_drug(Drug, Name),
/*	assert_description(Drug, Name),*/
	assert_state(Drug, Name),
	assert_group(Drug, Name),
/*	assert_indication(Drug, Name),
	assert_pharmacodynamics(Drug, Name),
	assert_mechanism_of_action(Drug, Name),
	assert_toxicity(Drug, Name),
	assert_metabolism(Drug, Name),
	assert_absortion(Drug, Name),
	assert_half_life(Drug, Name),
	assert_protein_binding(Drug, Name),
	assert_route_of_elimination(Drug, Name),*/
	assert_classification(Drug, Name),
/*	assert_synonim(Drug, Name),
	assert_product(Drug, Name),
	assert_mixture(Drug, Name), */
	assert_category(Drug, Name),
	assert_affected_organism(Drug, Name),
	assert_food_interaction(Drug, Name),
	assert_drug_interaction(Drug, Name),
	assert_property(Drug, Name),
	assert_pathway(Drug, Name),
	assert_target(Drug, Name),
	false.

assert_xml(Drugs) :- /*get_time(Time_0),*/ 
	member(Drug, Drugs),
/*	assert_drug(Drug, Name, Number), write(Number), write('  -  '), compute_time(Time_0, Time), writeln(Time),*/
	assert_drug(Drug, Name),
/*	assert_description(Drug, Name),*/
	assert_state(Drug, Name),
	assert_group(Drug, Name),
/*	assert_indication(Drug, Name),
	assert_pharmacodynamics(Drug, Name),
	assert_mechanism_of_action(Drug, Name),
	assert_toxicity(Drug, Name),
	assert_metabolism(Drug, Name),
	assert_absortion(Drug, Name),
	assert_half_life(Drug, Name),
	assert_protein_binding(Drug, Name),
	assert_route_of_elimination(Drug, Name),*/
	assert_classification(Drug, Name),
/*	assert_synonim(Drug, Name),
	assert_product(Drug, Name),
	assert_mixture(Drug, Name), */
	assert_category(Drug, Name),
	assert_affected_organism(Drug, Name),
	assert_food_interaction(Drug, Name),
	assert_property(Drug, Name),
	assert_pathway(Drug, Name),
	assert_target(Drug, Name),
	false.

get_drug(Drugs, Drug_Name, Drug) :- member(Drug, Drugs), member(element(name, _, [Drug_Name]), Drug).

get_drug_interactions(Drug, Interactions) :- member(element(drug_interactions, _, Drug_Interactions), Drug),
	findall(Interaction, (member(element(drug_interaction, _, Drug_Interaction), Drug_Interactions), 
		member(element(name, _, [Interaction]), Drug_Interaction)), Interactions).	

get_drugs(All_Drugs, Names, Drugs) :- findall(Drug, 
	(member(Drug, All_Drugs), member(element(name, _, [Name]), Drug), member(Name, Names)),
	Drugs).

write_modes_determinations :- write('
:- [settings].

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

').

save_background(Filename) :-
	tell(Filename),
	write_modes_determinations,
	listing(drug/1),
/*	listing(description/2),
	listing(state/1),*/
	listing(state/2),
%	listing(group/1),
%	listing(group/2),
/*	listing(indication/2),
	listing(pharmacodynamics/2),
	listing(mechanism_of_action/2),
	listing(toxicity/2),
	listing(metabolism/2),
	listing(absorption/2),
	listing(half_life/2),
	listing(protein_binding/2),
	listing(route_of_elimination/2),*/
%	listing(direct_parent/1),
%	listing(kingdom/1),
%	listing(superclass/1),
%	listing(class/1),
%	listing(subclass/1),
	listing(superclass/2),
	listing(class/2),
	listing(subclass/2),
/*	listing(synonym/1),
	listing(synonym/2),
	listing(product_name/2),
	listing(product_route/3),
	listing(product_generic/2),
	listing(product_over_the_counter/2),
	listing(product_approved/2),
	listing(mixture_name/2),
	listing(mixture_ingredients/3),*/
%	listing(category/1),
	listing(category/2),
%	listing(affected_organism/1),
	listing(affected_organism/2),
%	listing(food_interaction/1),
	listing(food_interaction/2),
	listing(property/3),
	listing(pathway/3),
	listing(pathway_drug/3),
	listing(target/3),
	listing(target_action/3),
	listing(target_polypeptide/4),
%	listing(target_pfam/3),
%	listing(target_go_classifier/4),
	told.

save_positive_examples(Filename) :-
	tell(Filename), 
	listing(drug_interaction/2),
/*	listing(drug_interaction_description/3),*/
	told.

assert_list([]) :- !.
assert_list(List) :- append([(Drug1, Drug2)], Rest, List), assertz(drug_interaction(Drug1, Drug2)),
	assert_list(Rest).

assert_list(_, []) :- !.
assert_list(Drug, Interactions) :- append([Interaction], Rest, Interactions), 
	assertz(drug_interaction(Drug, Interaction)), assert_list(Drug, Rest).

generate_negative_examples(Filename, Time_0) :-
	findall((X, Y), drug_interaction(X, Y), Positives),
	length(Positives, Number_Positives),
	Max is Number_Positives * 5,
	findall((X, Y), (drug(X), drug(Y), X @< Y, \+drug_interaction(X, Y)), Negatives),
	write('got no interaction drugs  -  '), compute_time(Time_0, Findall_Time), writeln(Findall_Time),
	random_permutation(Negatives, Random_Negatives),
	write('random permutation done  -  '), compute_time(Time_0, Random_Time), writeln(Random_Time),
	length(Negatives, Number_Negatives),
	N is min(Max, Number_Negatives),
	length(First_Max, N),
	append(First_Max, _, Random_Negatives),
	write('got final no interaction drugs  -  '), compute_time(Time_0, List_Time), writeln(List_Time),
	retractall(drug_interaction(_, _)),	assert_list(First_Max), (symmetry_drug_interactions; true),
	tell(Filename), 
	listing(drug_interaction/2),
	told,
	write('done  -  '), compute_time(Time_0, Time), writeln(Time).

save_examples(Filename, Drug, Interactions) :- retractall(drug_interaction(_, _)), assert_list(Drug, Interactions),
	tell(Filename), listing(drug_interaction/2), told.

xml_2_aleph(Infile, Background, Positives, Negatives) :-
	get_time(Time_0),
	get_drugs(Infile, Drugs),
	write('got all drugs  -  '), compute_time(Time_0, Get_All_Time), writeln(Get_All_Time),
	(assert_all_xml(Drugs); true),
	(retract_drug_interactions; true),
	(symmetry_drug_interactions; true),
	write('xml done  -  '), compute_time(Time_0, XML_Time), writeln(XML_Time),
	save_background(Background),
	save_positive_examples(Positives),
	generate_negative_examples(Negatives, Time_0).

xml_2_aleph(Infile, Drug_Name, Background, Positives, Negatives) :-
	get_time(Time_0),
	get_drugs(Infile, All_Drugs),
	write('got all drugs  -  '), compute_time(Time_0, Get_All_Time), writeln(Get_All_Time),
	get_drug(All_Drugs, Drug_Name, Drug),
	get_drug_interactions(Drug, Interactions),
	get_drugs(All_Drugs, Interactions, Interaction_Drugs),
	write('got interaction drugs  -  '), compute_time(Time_0, Get_Inter_Time), writeln(Get_Inter_Time),
	subtract(All_Drugs, Interaction_Drugs, No_Interaction_Drugs),
	write('got no interaction drugs  -  '), compute_time(Time_0, Get_No_Inter_Time), writeln(Get_No_Inter_Time),
	random_permutation(No_Interaction_Drugs, Random_No_Interaction_Drugs),
	write('random permutation done  -  '), compute_time(Time_0, Random_Time), writeln(Random_Time),
	length(Random_No_Interaction_Drugs, Length),
	length(Interactions, Number_Positives),
	Max is Number_Positives * 10,
	N is min(Max, Length),
	length(Selected_No_Interaction_Drugs, N),
	append(Selected_No_Interaction_Drugs, _, Random_No_Interaction_Drugs),
	get_drug_names(Selected_No_Interaction_Drugs, Selected_No_Interactions),
	write('got final no interaction drugs  -  '), compute_time(Time_0, Get_No_Final_Time), writeln(Get_No_Final_Time),
	append([Drug|Interaction_Drugs], Selected_No_Interaction_Drugs, Drugs),
	write('got final drugs  -  '), compute_time(Time_0, Get_Final_Time), writeln(Get_Final_Time),
	(assert_xml(Drugs); true),
	(retract_drug_interactions; true),
	write('xml done  -  '), compute_time(Time_0, XML_Time), writeln(XML_Time),
	save_examples(Positives, Drug_Name, Interactions),
	save_examples(Negatives, Drug_Name, Selected_No_Interactions),
	save_background(Background),
	write('done  -  '), compute_time(Time_0, Time), writeln(Time).


/*

name
description *
state
groups # 
	group
indication *
pharmacodynamics *
mechanism_of_action *
toxicity *
metabolism *
absorption *
half_life *
protein_binding *
route_of_elimination *
classification &
	direct_parent
	kingdom
	superclass
	class *
	subclass *
synonyms * #
	synonym
products * # -
	product &
		name
		route *
		generic +
		over_the_counter +
		approved +
mixtures * # -
	mixture &
		name
		ingredients
categories * #
	category
		category
affected_organisms * #
	affected_organism
food_interactions * #
	food_interaction
drug_interactions * #
	drug_interaction &
		name
		description
reactions * # -
snp_effects * # -
snp_adverse_drug_reactions * # -


* -> may be empty
# -> has sub elements of same type
& -> has distinct sub elements
+ -> boolean
- -> do not include

*/

