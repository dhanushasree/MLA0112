fact(has_fever).
fact(has_cough).

rule(flu, [has_fever, has_cough]).
rule(cold, [has_cough]).
rule(infection, [has_fever]).

prove(Goal) :-
    fact(Goal).

prove(Goal) :-
    rule(Goal, Conditions),
    prove_all(Conditions).

prove_all([]).

prove_all([H | T]) :-
    prove(H),
    prove_all(T).