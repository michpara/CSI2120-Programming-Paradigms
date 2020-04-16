reverseList([],L,L) :- !.
reverseList([H|T],L,R) :-
reverseList(T,[H|L],R).
mirrorAcc(L,R) :- reverseList(L,[],R).

reverseDrop(X, Y) :- reverseDrop(X, Z, 0), mirrorAcc(Z, Y).

reverseDrop([], [], _).

reverseDrop([X | L1], [Y | L2], C) :-
    	0 is mod(C, 2),
    	Y = X,
        CC is C + 1, 
    	reverseDrop(L1, L2, CC).

reverseDrop([X | L1], L2, C) :-
    CC is C + 1,
    reverseDrop(L1, L2, CC).
