-module(solucion2).
-export([status/1,run/0]).

status(Persona)->
    case Persona of
        {hombre, Edad} when Edad >= 18 -> paga_entrada;
        {mujer, Edad} when Edad >= 18 -> entrada_libre;
        {hombre,_} -> no_admision;
        {mujer,_} -> no_admision;
        _-> entrada_incorrecta
    end.

run()->
    HombreAdulto={hombre,18},
    MujerAdulto={mujer,18},
    HombreMenor={hombre,17},
    MujerMenor={mujer,17},
    io:format("~w ~n",[status(HombreAdulto)]),
    io:format("~w ~n",[status(MujerAdulto)]),
    io:format("~w ~n",[status(HombreMenor)]),
    io:format("~w ~n",[status(MujerMenor)]).

    