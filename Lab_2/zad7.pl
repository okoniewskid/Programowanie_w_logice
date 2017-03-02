last(X, L):-
  append(_, [X], L)
  .

  delete(_, [], []).

  delete(X, [X|L], M):-
      delete(X, L, M)
      .

  delete(X, [Y|L], [Y|M]):-
  	delete(X, L, M)
  	.

delete([_,_,_], []).

delete([X|L], [X|M]) :-
  delete(L,M)
  .

reverse([],[]).

reverse([X|L],M):-
  append(A, [X], M),
  reverse(L, A)
  .
