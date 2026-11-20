child(hari, ram).

oversmart(hari).

stupid(X) :-
    oversmart(X).

naughty(X) :-
    oversmart(Y), child(Y, X).
