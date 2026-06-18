move(state(middle, onbox, middle, hasnot),
     grasp,
     state(middle, onbox, middle, has)).

move(state(P, floor, P, H),
     climb,
     state(P, onbox, P, H)).

move(state(P1, floor, P1, H),
     push(P1, P2),
     state(P2, floor, P2, H)).

move(state(P1, floor, B, H),
     walk(P1, P2),
     state(P2, floor, B, H)).

can_get(state(_, _, _, has)) :-
    write('Monkey got the banana'), nl.

can_get(State1) :-
    move(State1, Move, State2),
    write('Move: '),
    write(Move),
    nl,
    can_get(State2).