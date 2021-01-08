# ok -Centimetros de pulgadas
# ok -Reciba n minutos en una función y determine cuántas horas y minutos equivalen. (asume que usas argumentos válidos)
# ok -Se desea saber a cuantos dólares equivalen n pesos. El precio del dolar se envía como argumento
defmodule Calculadora do
  def conversor(cm) do
    pulgadas=cm/2.54
    IO.puts("#{cm} cm equivale a #{pulgadas} pulgada(s)")
  end

  def tiempo(min) do
    horas=div(min,60)
    minutos=rem(min,60)
    IO.puts("#{horas} horas , #{minutos} minuto(s)")
  end

  def dolares(pesos,valor_dolar) do
    dolar=pesos/valor_dolar
    IO.puts("#{pesos} pesos equivale a #{dolar} dolar(es)")
  end
end

defmodule Test do
  def start do
    10|> Calculadora.conversor
    135|> Calculadora.tiempo
    60|> Calculadora.dolares(20)
  end
end
