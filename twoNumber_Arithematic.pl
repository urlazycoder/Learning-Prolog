% Arithmetic Operations

start :-
    write('Enter first number: '),
    read(A),
    write('Enter second number: '),
    read(B),

    S is A+B,
    D is A-B,
    P is A*B,
    Q is A/B,

    write('Sum = '), write(S), nl,
    write('Difference = '), write(D), nl,
    write('Product = '), write(P), nl,
    write('Division = '), write(Q), nl.
