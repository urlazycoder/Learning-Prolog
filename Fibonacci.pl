% Fibonacci Series

fib(0).
fib(N) :-
    N > 0,
    fib_series(0, 1, N).

fib_series(A, B, N) :-
    N > 0,
    write(A), write(' '),
    C is A+B,
    N1 is N-1,
    fib_series(B, C, N1).

fib_series(_, _, 0).
