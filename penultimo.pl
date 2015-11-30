% Verifica si X es el penúltimo elemento de la lista L:
% Parámetros:
% - Elemento X.
% - Lista con n elementos tal que n>=2.

penultimo(X,[X,_]) :-  !.
penultimo(R,[_|T]) :- penultimo(R, T), !.
