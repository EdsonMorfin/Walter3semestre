-module(solucion4).
-export([cpar/1,start/0]).
%-compile(export_all).

cpar(N) when N rem 2 == 0 ->
    io:format("El cuadrado de ~w es ~w \n",[N,N*N]);
cpar(N) -> io:format("el ~w no es par \n",[N]).

start()->%test
    cpar(4),
    cpar(5).