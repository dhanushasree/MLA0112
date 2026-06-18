bird(sparrow).
bird(eagle).
bird(parrot).
bird(penguin).
bird(ostrich).

cannot_fly(penguin).
cannot_fly(ostrich).

can_fly(Bird) :-
    bird(Bird),
    \+ cannot_fly(Bird).

check_fly(Bird) :-
    can_fly(Bird),
    write(Bird),
    write(' can fly').

check_fly(Bird) :-
    cannot_fly(Bird),
    write(Bird),
    write(' cannot fly').