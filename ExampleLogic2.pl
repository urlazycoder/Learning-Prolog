% Facts
american(george).
country(iraq).
enemy(iraq, america).
missile(m1).
missile(m2).
has(iraq, m1).
has(iraq, m2).

% Rules
hostile(X) :-
    enemy(X, america).

weapon(X) :-
    missile(X).

sells(george, X, iraq) :-
    has(iraq, X),
    weapon(X).

criminal(X) :-
    american(X),
    sells(X, _, Y),
    hostile(Y).
