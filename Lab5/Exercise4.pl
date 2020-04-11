fact(0, 1).
fact(N, F) :- N > 0, 
  N1 is N-1,
  fact(N1, F1),
  F is F1 * N.

signCnt(0,1).
signCnt(K,S) :- K > 0,
  K1 is K - 1,
  signCnt(K1,S1),
  S is S1 * -1.

cosN(X,X,_,0).
cosN(K,N,X,Y) :- K < N,
	 signCnt(K,S),
	 K2 is 2 * K,
	 fact(K2,F),
	 Yk is (S * X**K2)/F,
	 KK is K + 1,
	 cosN(KK, N, X, YY),
	 Y is Y + YY.

cosN(N,X,Y) :- N>0, cosN(0,N,X,Y).
