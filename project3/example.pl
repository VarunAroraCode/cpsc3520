% facts
male(adam).
female(eve).

male(david, fred).
parent(adam,cain).
parent(eve,cain).
parent(adam,able).
parent(eve,able).

% rules
father(X,Y) :- parent(X,Y), male(X).
mother(X,Y) :- parent(X,Y), female(X).
sibling(X,Y) :- parent(P,X), parent(P,Y).
child(X,Y) :- parent(Y, X). 
/* one more rule to define child:
child(X,Y) :- father(Y, X);mother(Y,X).
*/