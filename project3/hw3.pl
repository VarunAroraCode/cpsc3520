%facts
male(adam).
female(mona).
male(clancy).
female(jackie).
female(haana).
male(homer).
female(marge).
male(peter).
female(selma).
male(bart).
female(lisa).
female(maggie).
male(ling).
married(jackie,clancy).
married(clancy,jackie).
married(homer,marge).
married(marge,homer).
married(adam,mona).
married(mona,adam).
father(adam,haana).
father(adam,homer).
mother(mona,homer).
mother(mona,haana).
father(clancy,marge).
father(clancy,peter).
father(clancy,selma).
mother(jackie,marge).
mother(jackie,peter).
mother(jackie,selma).
father(homer,bart).
father(homer,lisa).
father(homer,maggie).
mother(marge,bart).
mother(marge,lisa).
mother(marge,maggie).
mother(selma,ling).
%rules
parent(X,Y) :- father(X,Y).
parent(X,Y) :- mother(X,Y).
child(X,Y) :- parent(Y, X). 
husband(X,Y) :- married(X,Y), male(X).
wife(X,Y) :- married(X,Y), female(X).
grandparent(X,Z) :- parent(X,Y), parent(Y,Z).
grandchild(X,Z) :- grandparent(Z,X).


