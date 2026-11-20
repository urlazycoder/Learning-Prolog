% 8 Queen Problem

:- use_module(library(clpfd)).

solve(Queens) :-
    length(Queens, 8),
    Queens ins 1..8,
    all_different(Queens),
    labeling([], Queens),
    safe(Queens).

safe([]).
safe([Q|Others]) :-
    no_attack(Q, Others, 1).

no_attack(_, [], _).
no_attack(Q, [X|Others], D) :-
    abs(Q-X) =\= D,
    D1 is D+1,
    no_attack(Q, Others, D1).
