par([]).
par([_,_|T]) :-
    par(T).
