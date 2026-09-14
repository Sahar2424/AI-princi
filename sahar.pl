female(taiba).
female(mona).
female(sahar).
female(lujain).
female(sukaina).
female(baneen).
female(zainab).

male(ahmed).
male(steve).
male(mustafa).

parent(taiba, steve).
parent(taiba, mustafa).

parent(ahmed, steve).
parent(ahmed, mustafa).

parent(mona, sahar).
parent(mona, lujain).
parent(mona, sukaina).
parent(mona, baneen).

parent(steve, sahar).
parent(steve, lujain).
parent(steve, sukaina).
parent(steve, baneen).

parent(mustafa, zainab).

%rules

mother(X, Y) :-
    female(X),
    parent(X, Y).

father(X, Y) :-
    male(X),
    parent(X, Y).

sister(X, Y) :-
    female(X),
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

brother(X, Y) :-
    male(X),
    parent(Z, X),
    parent(Z, Y),
    X \= Y.
