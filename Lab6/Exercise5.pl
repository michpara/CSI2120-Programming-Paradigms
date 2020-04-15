addSecond(L,S) :- addSecond(L,0,0,S). 

addSecond([],S,_,S). 

addSecond([X|L],T,C,S) :- 
    (  
    	not(C mod 2 =:= 0) -> 
    		TT is T+X, 
    		CC is C+1, 
    		addSecond(L,TT,CC,S)
    	; 
    	TT is T, 
    	CC is C+1, 
    	addSecond(L, TT, CC,S)
    ).