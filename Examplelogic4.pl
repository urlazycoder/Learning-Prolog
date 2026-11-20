% Facts
greedy(shyam).
honest(gopal).

% Rules
autocrat(X) :-
    greedy(X).

evil(X) :-
    autocrat(X).
