-module(case_of).
-export([comparacion/2,test/0]).

comparacion(N1,N2) when N1>N2 -> n1_es_mayor;
comparacion(N1,N2) when N2>N1 -> n2_es_mayor;
comparacion(N1,N2) when N1==N2 -> son_iguales.

test()->
    N1=5,
    N2=2,
    io:format("~w comparado con ~w = ~w ~n",[N1,N2,comparacion(N1,N2)]). 
