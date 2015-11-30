% Verifica si la longitud de la lista L es par:
% Parámetros:
% - Lista con n elementos tal que n>=0.

par([]).
par([_,_|T]) :-
    par(T).
