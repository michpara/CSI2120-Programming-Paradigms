reverseList([],L,L) :- !.
reverseList([H|T],L,R) :-
	reverseList(T,[H|L],R).

mirrorAcc(L,R) :- reverseList(L,[],R).

head([H|_], H).

secondLast([],[]).
secondLast(X, L) :-
	mirrorAcc([RR|R], L),
   	head(R, X).