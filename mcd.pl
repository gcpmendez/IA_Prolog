% Verifique si Z es el máximo común divisor de X e Y:
% Parámetros:
% - Elemento X.
% - Elemento Y.
% - Elemento Z que devuelve el mcd de X e Y.

mcd(A,B,R):-
      A==B,
      R is A.
mcd(A,B,R):-
      A>B,
      Aux is A-B,
      mcd(Aux,B,R),
      !.
mcd(A,B,R):-
      A<B, Aux is B-A,
      mcd(A,Aux,R),
      !.
mcd(A,_,R):-
      mcd(_,A,R),!.
