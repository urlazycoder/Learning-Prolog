% Facts
pompeian(marcus).
tried(marcus, caesar).
ruler(caesar).

% Rules
roman(X) :-
    pompeian(X).

loyal(X, Y) :-
    roman(X),
    ruler(Y),
    \+ tried(X, Y).

hate(X, Y) :-
    roman(X),
    ruler(Y),
    \+ loyal(X, Y).
