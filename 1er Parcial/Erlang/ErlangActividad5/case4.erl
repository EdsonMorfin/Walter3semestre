-module(case4).
-export([calculadora/3,test/0]).

calculadora(OPCION,N1,N2) when OPCION==suma -> N1+N2;
calculadora(OPCION,N1,N2) when OPCION==resta -> N1-N2;
calculadora(OPCION,N1,N2) when OPCION==division -> N1/N2;
calculadora(OPCION,N1,N2) when OPCION==multi -> N1*N2.

test()->
    A=suma,
    B=resta,
    C=multi,
    D=division,
    N1=10,
    N2=36,
    io:format("la ~w de ~w + ~w es = ~w ~n",[A,N1,N2,calculadora(A,N1,N2)]),
    io:format("la ~w de ~w - ~w es = ~w ~n",[edson_paul_morfin,N1,N2,calculadora(B,N1,N2)]),
    io:format("la ~w de ~w / ~w es = ~w ~n ",[D,N1,N2,calculadora(D,N1,N2)]),
    io:format("la ~w de ~w + ~w es = ~w ~n",[C,N1,N2,calculadora(C,N1,N2)]).