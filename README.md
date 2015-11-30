# INFORME
`Germán Paz Méndez (alu0100503647)`


Este práctica ha sido desarrollado en la asignatura de
**Inteligencia Artificial** del **_Grado en Ingeniería Informática_** de la **ULL**.

## Descripción de la práctica
Debe definirse e implementar un programa mediante el lenguaje de programación
Prolog para la resolución de cada uno de los siguientes problemas:  

1. Definir el predicado penultimo(X, L) que se verifique si X es el penúltimo elemento
de la lista L.
> Ejemplo: penultimo(X, [1,2,3,4]).
X = 3.

2. Definir el predicado mcd(X,Y,Z) que se verifique si Z es el máximo común divisor
de X e Y.
> Ejemplo:
mcd(10, 15, X).
X = 5.

3. Definir el predicado selecciona(X,L1,L2), que se verifique si L2 es la lista
obtenida eliminando una ocurrencia de X en L1.
> Ejemplo:
selecciona(a, [c,d,a,b,a], L).
L = [c,d,b,a];
L = [c,d,a,b]

4. Definir el predicado par(L) que se verifique si la longitud de la lista L es par. Se
considera que una lista vacía tiene longitud par.
> Ejemplo:
par([a, [1,pepe], 24, [91,8, j]]).
true.
par([lola, paco, luis).
false.

## Soluciones
```
penultimo(X,[X,_]) :-  !.
penultimo(R,[_|T]) :- penultimo(R, T), !.
```
> Explicación:
>   - Parada: Devolver la variable penúltima del array.
>   - Recursión: Ir recorriendo el array a tráves de su cola hasta que se de la condición de parada.  

>![imagen](https://github.com/gcpmendez/IA_Prolog/blob/master/images/penultimo.JPG?raw=true)

> Casos especiales no definidos:
>   - penultimo(X,[1]).  
false.
>   - penultimo(X,[]).  
false.


```
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
      mcd(_,A,R),
      !.
```
> Explicación: Aquí todo depende de si A<=>B. Con una traza gráfica se entiende todo mejor:  

> mcd(7, 5, R).


>![imagen](https://github.com/gcpmendez/IA_Prolog/blob/master/images/mcd.JPG?raw=true)



```
selecciona(X,[X|T],T).
selecciona(X,[H|T],[H|TT]) :-
  selecciona(X,T,TT).
```
> Explicación:
>   - Parada: Hay un T(lista obtenida) que es el resultado de elimnar la ocurrencia X en [X|T].
>   - Recursión: con el comando **trace.** vemos como va actuando. Se trata que desde que encuentre la ocurrencia se añade la cola al resultado y vuelve recursivamente añadiendo los elementos del Head quitados anteriormente.
>
>![imagen](https://github.com/gcpmendez/IA_Prolog/blob/master/images/Selecciona.JPG?raw=true)

```
par([]).
par([_,_|T]) :-
    par(T).
```
> Explicación:
>   - Parada: sí array vacío devolver true.
>   - Recursión: Va quitando dos variables en el array y si es vacío entra en la condición
de parada dando true y si no da false ya que posee un elemento.

>![imagen](https://github.com/gcpmendez/IA_Prolog/blob/master/images/par.JPG?raw=true)

## Ayúdame a mejorar este trabajo

Cada **bugs** que encuentres házmelo saber a [gcpmendez@gmail.com](mailto:gcpmendez@gmail.com)

## Enlaces Externos

  [1]: [ETSII ULL](http://www.ull.es/view/centros/etsii/Tercero_7/es), Escuela Técnica Superior de Ingeniería Informática - Graduado en Ingeniería Informática.

## Licencia
<a rel="license"  href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a>  <br />Este trabajo tiene una licencia <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
