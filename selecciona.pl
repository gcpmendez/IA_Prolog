% verifica si L2 es la lista obtenida eliminando una ocurrencia de X en L1.
% Parámetros:
% - Elemento X.
% - Lista L1.
% - Lista L2 tal que L2 = L1 - X.

selecciona(X,[X|T],T).
selecciona(X,[H|T],[H|TT]) :-
  selecciona(X,T,TT).
