-module(case2).
-export([comparacion/3,test/0]).

comparacion(N1,N2,N3) when N1/=0,N2==0,N3==0 -> N1*N1;
comparacion(N1,N2,N3) when N1/=0,N2/=0,N3==0 -> N1 rem N2;
comparacion(N1,N2,N3)-> N1+N2+N3.


test()->
    N1=10,
    N2=5,
    N3=14,
    io:format("~w al cuadrado= ~w ~n",[N1,comparacion(N1,0,0)]),
    io:format("el producto de ~w entre ~w es = ~w ~n",[N1,N2,comparacion(N1,N2,0)]),
    io:format("la suma de ~w + ~w + ~w = ~w ~n",[N1,N2,N3,comparacion(N1,N2,N3)]).


