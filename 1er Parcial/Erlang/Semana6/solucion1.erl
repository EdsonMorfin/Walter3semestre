-module(solucion1).
-export([status/1]).

status(Persona)->
    case Persona of
        {hombre, Edad} when Edad >= 18 -> paga_entrada;
        {mujer, Edad} when Edad >= 18 -> entrada_libre;
        {hombre,_} -> no_admision;
        {mujer,_} -> no_admision;
        _-> entrada_incorrecta
    end.

