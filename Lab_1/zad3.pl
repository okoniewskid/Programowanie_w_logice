rzym([], 0).
rzym(i, 1).
rzym(v, 5).
rzym(x, 10).
rzym(l, 50).
rzym(c, 100).
rzym(d, 500).
rzym(m, 1000).

rzym([X], N):-
    rzym(X, N)
    .
rzym([X,Y|L], N) :-
    rzym(X, A),
    rzym(Y, B),
    A >= B,
    rzym(L, C),
    N is A+B+C
    .
rzym([X,Y|L], N) :-
    rzym(X, A),
    rzym(Y, B),
    A < B,
    rzym(L, C),
    N is B-A+C
    .
