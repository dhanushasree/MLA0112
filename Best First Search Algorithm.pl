edge(a, b, 4).
edge(a, c, 2).
edge(b, d, 5).
edge(c, d, 1).
edge(c, e, 7).
edge(d, goal, 3).
edge(e, goal, 2).

heuristic(a, 7).
heuristic(b, 6).
heuristic(c, 4).
heuristic(d, 2).
heuristic(e, 3).
heuristic(goal, 0).

best_first(Start, Goal) :-
    best_first_search([[Start]], Goal).

best_first_search([[Goal | Path] | _], Goal) :-
    reverse([Goal | Path], Result),
    write('Path: '),
    write(Result).

best_first_search([[Node | Path] | Rest], Goal) :-
    findall([Next, Node | Path],
            (edge(Node, Next, _), \+ member(Next, [Node | Path])),
            NewPaths),
    append(Rest, NewPaths, AllPaths),
    sort_paths(AllPaths, SortedPaths),
    best_first_search(SortedPaths, Goal).

sort_paths(Paths, Sorted) :-
    predsort(compare_paths, Paths, Sorted).

compare_paths(Order, [Node1 | _], [Node2 | _]) :-
    heuristic(Node1, H1),
    heuristic(Node2, H2),
    compare(Order, H1, H2).