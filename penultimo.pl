penultimo(X,[X,_]) :-  !.
penultimo(R,[_|T]) :- penultimo(R, T), !.
