fact(has_fever).
fact(has_cough).

rule(flu, [has_fever, has_cough]).
rule(cold, [has_cough]).
rule(infection, [has_fever]).

forward_chain :-
    rule(Conclusion, Conditions),
    all_true(Conditions),
    write('Derived conclusion: '),
    write(Conclusion),
    nl,
    fail.

forward_chain.

all_true([]).

all_true([H | T]) :-
    fact(H),
    all_true(T).