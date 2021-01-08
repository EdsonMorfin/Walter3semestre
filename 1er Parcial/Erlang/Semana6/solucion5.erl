-module(solucion5).
-export([cpar/1,start/0]).

cpar(N) when not is_integer(N)->
    io:format("~w no es valido ~n",[N]);
cpar(N) when N rem 2 ==0 ->
    io:format("el cuadrado de ~w es ~w \n",[N,N*N]);
cpar(N) -> io:format("~w no es par \n",[N]).

start()-> %test
    cpar(4),
    cpar(5),
    cpar(nombre),
    cpar({5,4}).

Edson Paul Morfin Gallardo 