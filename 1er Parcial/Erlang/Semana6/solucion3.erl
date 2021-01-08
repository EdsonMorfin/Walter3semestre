-module(solucion3).
-export([noMes/1]).

noMes(MES) ->
    case MES of
        MES when MES==enero->1;
        MES when MES==febrero ->2;
        MES when MES==marzo -> 3;
        MES when MES==abril -> 4;
        MES when MES==mayo -> 5;
        MES when MES==junio ->6;
        MES when MES==julio -> 7;
        MES when MES==agosto -> 8;
        MES when MES==septiembre -> 9;
        MES when MES==octubre -> 10;
        MES when MES==noviembre -> 11;
        MES when MES==diciembre -> 12;
        _-> entrada_incorrecta
   
    end.
