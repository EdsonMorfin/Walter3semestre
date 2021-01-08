-module(examen2).
-export([nombre/1,nombrea/1,ano/2,anoa/3,test/0]).


nombre(Persona)->
    case Persona of
        {Nombre} -> io:format("Hola ~w ~n",[Nombre])
    end.
nombrea(Persona)->
    case Persona of
        {Nombre,Apellido,Apellido2}-> io:format("Hola ~w ~w ~w ~n",[Apellido,Apellido2,Nombre])
    end.

ano(Ano,Nombre)->
        io:format("Hola ~w tienes ~w anos  ~n",[Nombre,2020-Ano]).

anoa(Anoa,Nombre,Ano)->
    io:format("Hola ~w naciste en ~w y tienes ~w  ~n",[Nombre,Ano,Anoa-Ano]).
    

test()->
    A={juan},
    B={edson,morfin,gallardo},
    C=2001,
    D=edson,
    Actual=2020,
    nombre(A),
    nombrea(B),
    ano(C,D),
    anoa(Actual,D,C).
        



