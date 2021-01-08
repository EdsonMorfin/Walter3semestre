-module(case3).
-export([entero/1,test/0]).

entero(N1) when N1 rem 2==0 -> N1*N1; 
entero(N1) when N1 rem 2==1 -> N1*N1*N1.


test()->
    PAR=10,
    IMPAR=15,
    io:format("~w es par, su cuadrado es= ~w ~n",[PAR,entero(PAR)]),
    io:format("~w es impar, su cubo es= ~w ~n",[IMPAR,entero(IMPAR)]).


