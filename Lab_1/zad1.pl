fib(1,1).
fib(2,1).
fib(A, B) :-
    C is A-1,
    D is A-2,
    fib(C, X), fib(D, Y), B is X+Y.

nwd(A, A, A).
nwd(A, B, C) :-
    A < B,
    E is B-A,
    nwd(E, A, C)
    .
nwd(A, B, C) :-
    B < A,
    D is A-B,
    nwd(D, B, C)
    .
