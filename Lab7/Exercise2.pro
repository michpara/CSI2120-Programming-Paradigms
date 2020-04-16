oddEven([], []).
oddEven([X | L1], [Y | L2]) :-
    (X mod 2 =:= 0 -> Y = even; Y = odd),
    oddEven(L1, L2).