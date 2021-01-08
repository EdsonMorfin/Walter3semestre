-module(calculadora).
-export([suma/2, resta/2, multiplicacion/2, division/2, cuadrado/1, cubo/1 ,inverso/1]).

suma(N1, N2)->
    N1+N2.

resta(N1, N2)->
    N1-N2.

multiplicacion(N1, N2)->
    N1*N2.

division(N1, N2)->
    N1+N2.

cuadrado(N1)->
    N1*N1.
cubo(N1)->
    N1*N1*N1.
inverso(N1)->
    1/N1.

