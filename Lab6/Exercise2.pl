element(chlorine,'Cl').
element(helium,'He').
element(hydrogen,'H').
element(nitrogen,'N').
element(oxygen,'O').

elements :- 
  	writeln('Elements in the Periodic Table'),
    repeat,
    write('Symbol to look-up: '),
  	read(X), 
    (   not(element(Y, X)) ->
    		write('Don\'t know the symbol: '), 
   			writeln(X), 
    		write('Exiting.'), 
    		!, 
    		fail
    	;   
    	element(Y, X),
    	write(X), 
    	write(' is the symbol for: '), 
    	write(Y)
    ).