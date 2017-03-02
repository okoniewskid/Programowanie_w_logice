parent(tom, bob).
parent(pam, bob).
parent(tom, liz).
parent(pam, liz).
parent(bob, ann).
female(liz).
female(ann).
female(pam).
male(tom).
male(bob).

child(X, Y):-
  parent(Y, X)
  .

mother(X, Y):-
  female(X),
  parent(X, Y)
  .

sister(X, Y):-
  female(X),
  parent(Z, X),
  parent(Z, Y).
  X \== Y
  .

has_a_child(X):-
  parent(X, _)
  .

grandparent(X, Y):-
  parent(X, Z),
  parent(Z, Y)
  .

predecessor(X, Y):-
  parent(X, Y)
  .

predecessor(X, Y):-
  parent(X, Z),
  predecessor(Z, Y)
  .
