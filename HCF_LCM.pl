% HCF of two numbers
hcf(A, 0, A) :- A > 0.

hcf(A, B, H) :-
    B > 0,
    R is A mod B,
    hcf(B, R, H).

% LCM of two numbers
lcm(A, B, L) :-
    A > 0,
    B > 0,
    hcf(A, B, H),
    L is (A * B) // H.
