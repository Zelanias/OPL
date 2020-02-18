married(donald, melania).
married(donaldjr, vanessa).
married(fred, mary).
married(eric, lara).
married(ivanka, jared).
divorced(donald, ivana).
divorced(donald, marla).
mother(mary, donald).
mother(mary, maryanne).
mother(mary, fredjr).
mother(mary, elizabeth).
mother(mary, robert).
mother(marla, tiffany).
mother(melania, barron).
mother(ivana, ivanka).
mother(ivana, donaldjr).
mother(ivana, eric).
mother(vanessa, kai).
mother(vanessa, donald3).
mother(vanessa, chloe).
mother(vanessa, tristan).
mother(vanessa, spencer).
mother(ivanka, arabella).
mother(ivanka, joseph).
mother(ivanka, theodore).
father(fred, donald).
father(fred, maryanne).
father(fred, fredjr).
father(fred, elizabeth).
father(fred, robert).
father(donald, tiffany).
father(donald, barron).
father(donald, donaldjr).
father(donald, ivanka).
father(donald, eric).
father(donaldjr, kai).
father(donaldjr, donald3).
father(donaldjr, chloe).
father(donaldjr, tristan).
father(donaldjr, spencer).
father(jared, arabella).
father(jared, joseph).
father(jared, theodore).
male(fred).
male(fredjr).
male(robert).
male(donald).
male(donaldjr).
male(kai).
male(donald3).
male(tristan).
male(spencer).
male(jared).
male(joseph).
male(theodore).
male(eric).
male(barron).
female(mary).
female(maryanne).
female(elizabeth).
female(ivana).
female(marla).
female(tiffany).
female(ivanka).
female(lara).
female(chloe).
female(melania).
female(vanessa).
female(arabella).

parentof(X,Y):- father(Y,X); mother(Y,X).
exspouse(X, Y):- divorced(X,Y); divorced(Y,X).
stepsister(X,Y):- father(A,X),father(A,Y),mother(B,X),not(mother(B,Y)),female(Y).
stepbrother(X,Y):- father(A,X),father(A,Y),mother(B,X),not(mother(B,Y)),male(Y).
stepmother(X,Y):- father(A, X), mother(B,X),exspouse(B, A),  married(A, Y).
marry(X,Y):- married(X,Y);married(Y,X).
spouse(X,Y):-married(X,Y);married(Y,X).
sister(X,Y):-father(A,X),father(A,Y),mother(B,X),mother(B,Y),female(Y).
brother(X,Y):-father(A,X),father(A,Y),mother(B,X),mother(B,Y),male(Y).
grandfather(X,Y):- parentof(X,Z),parentof(Z,Y),male(Y).
grandmother(X,Y):- parentof(X,Z),parentof(Z,Y),female(Y).
greatgrandfather(X,Y):- parentof(X,Z),parentof(Z,A),parentof(A,Y),male(Y).

%mother(A,ivanka);
%stepmother(ivanka,B);
%father(C,ivanka);
%spouse(donald,D);
%exspouse(donald,E);
%sister(ivanka,F);
%stepsister(barron,G);
%brother(ivanka,H);
%grandfather(ivanka,I);
%grandmother(ivanka,J);
%greatgrandfather(theodore,K).