god(kronos).
goddess(rhea).
goddess(demeter).
god(zeus).
goddess(hera).
god(poseidon).
god(hades).
goddess(hestia).
goddess(persephone).
god(ares).
goddess(eileithyia).
goddess(hebe).
goddess(athena).
goddess(aphrodite).
god(apollo).
goddess(artemis).
god(hermes).
god(dionysus).

parent(demeter,kronos).
parent(demeter,rhea).
parent(zeus,kronos).
parent(zeus,rhea).
parent(hera,kronos).
parent(hera,rhea).
parent(poseidon,kronos).
parent(poseidon,rhea).
parent(hades,kronos).
parent(hades,rhea).
parent(hestia,kronos).
parent(hestia,rhea).
parent(persephone,demeter).
parent(persephone,zeus).
parent(ares,zeus).
parent(ares,hera).
parent(eileithyia,zeus).
parent(eileithyia,hera).
parent(hebe,zeus).
parent(hebe,hera).
parent(athena,zeus).
parent(aphrodite,zeus).
parent(apollo,zeus).
parent(artemis,zeus).
parent(hermes,zeus).
parent(dionysus,zeus).

mother(X,Y):- parent(X,Y),female(Y).
father(X,Y):- parent(X,Y),male(Y).
son(X,Y):- parent(X,Y),male(X).
daughter(X,Y):- parent(X,Y),female(Y).
sibling(X,Y):- parent(X,Z),parent(Y,Z),X\==Y.
sister(X,Y):- parent(X,Z),parent(Y,Z),female(X),X\==Y.
brother(X,Y):- parent(X,Z),parent(Y,Z),male(X),X\==Y.


ancestor(X,Y) :- parent(Z,X), parent(Y,Z).

ancestor(X, Z) :- parent(X, Z).
ancestor(X, Z) :- parent(X, Y),predecessor(Y, Z).
