numberr(Z) :-
    member(A, [1,2,3,4,5,6,7,8,9]),
    member(B, [0,2,3,4,5,6,7,8,9]),
    member(C, [0,2,3,4,5,6,7,8,9]),
    Z is 100*A + 10*B + C,
    0 is mod(Z, 5),
    0 is mod(Z, 6),
    3 is mod(Z, 9)
    .
