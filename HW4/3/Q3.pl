nelements(List,Q) :- flatten(List,A),count(A,Q).
count([],0).
count([_|Tail],B):-count(Tail,C),B is C + 1.