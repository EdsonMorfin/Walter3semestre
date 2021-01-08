-module(examen).
-export([nombre/1,ano/2,test/0]).

nombre(Name)->
    case Name of
        {Name} ->io:format("Hola ~w ~n",[Name]);
        {name,apPaterno,apMaterno} ->io:format("~w ~w ~w ~n",[apPaterno,apMaterno,name])
    end.

ano(Datos)->
    case Datos of 
        {is_int,Datos}
    io:format("Hola tienes ~w ~w",[Name,2020-ANacimiento]).

test()->
    A={Pepillo},
    B={2018,paul},
    ano(A),
    nombre(B).
