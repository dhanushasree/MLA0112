female(pam).
female(liz).
female(ann).
female(pat).

male(tom).
male(bob).
male(jim).

parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).

mother(M, C) :-
    female(M),
    parent(M, C).

father(F, C) :-
    male(F),
    parent(F, C).

grandfather(GF, C) :-
    male(GF),
    parent(GF, P),
    parent(P, C).

grandmother(GM, C) :-
    female(GM),
    parent(GM, P),
    parent(P, C).

sister(S, P) :-
    female(S),
    parent(X, S),
    parent(X, P),
    S \= P.

brother(B, P) :-
    male(B),
    parent(X, B),
    parent(X, P),
    B \= P.