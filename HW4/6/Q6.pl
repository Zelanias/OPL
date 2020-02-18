population(dallas,2600000).
population(denton,850000).
population(collin,1000000).
population(tarrant,2000000).

median(dallas,60000).
median(denton,65000).
median(collin,90000).
median(tarrant,62000).

adjacent(dallas,tarrant).
adjacent(tarant,denton).
adjacent(dallas,collin).
adjacent(dallas,denton).
adjacent(collin,denton).

neighbor(A,B):-adjacent(A,B);adjacent(B,A).
smallneighbor(A,B):-neighbor(A,B),population(A,C),population(B,D),C > D.
smallrichneigh(A,B):-smallneighbor(A,B),median(A,C),median(B,D), D > C.
smallpoorneigh(A,B):-smallneighbor(A,B),median(A,C),median(B,D), D < C.
maxpop([X],X).
maxpop([H|T],X):-maxpop(T,O),population(O,C),population(H,A),population(X,B), (A > C -> B = A; B = C).
