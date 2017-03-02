flatten([], []).
flatten(X, [X]).
flatten([L1|L2], L):-
    flatten(L1, X),
    flatten(L2, Y),
    append(X, Y, L)
    .

ordered([_]).
ordered([X, Y|L]):-
    X =< Y,
    ordered([Y|L])
    .

split([], [], []).
split([X], [X], []).
split([X, Y|T], [X|L1], [Y|l2] ):-
    split(L, L1, L2)
    .

merge()

	.

mergesort([], []).
mergesort([X], [X]).
mergesort(L1, L2):-

    .

drzewo(_,_,_).

size(nil, 0).
size(drzewo(_,L,P),N):-
	size(L,A),
    size(P,B),
    N is A + B + 1
    .

max(drzewo(X, nil, nil), X).
max(drzewo(X,nil,P), N):-
    max(P,A),
    max_list([X,A],N)
    .
max(drzewo(X,L,nil), N):-
    max(L,A),
    max_list([X,A],N)
    .
max(drzewo(X, L, P), N):-
    max(L, A),
    max(P, B),
    max_list([X,A,B],N)
	.

times(_,nil,nil).
times(N, drzewo(X,L,P),drzewo(Y,L1,P1)):-
    Y is X * N,
    times(N,L,L1),
    times(N,P,P1)
    .

preorder(nil,[]).
preorder(drzewo(X,L,P),N):-

    .
