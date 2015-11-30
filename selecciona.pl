
selecciona(X,[X|T],T).
selecciona(X,[H|T],[H|TT]) :-
  selecciona(X,T,TT).
