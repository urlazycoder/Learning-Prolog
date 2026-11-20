% Facts
mammal(horse).
mammal(cow).
mammal(pig).

parent(bluebeard, charlie).

% Rules
offspring(X, Y) :-
    parent(Y, X).

horse(bluebeard).

horse(X) :-
    offspring(X, Y),
    horse(Y).
