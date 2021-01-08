defmodule ModuloPrincipal do
  alias CalculadoraBasica, as: CB
  alias CalculadoraCientifica, as: CC
  alias AreasFiguras, as: Area
  def test do
    valor=5
    n1=10+valor
    n2=30+valor
    n3=40+valor
    n4=50+valor
    IO.puts("Modulo Calculadora Basica")
    IO.puts("El resultado de la suma de #{n1} y #{n2} es #{CB.suma(n1,n2)} ")
    IO.puts("El resultado de la resta de #{n1} y #{n2} es #{CB.resta(n1,n2)} ")
    IO.puts("El resultado de la multiplicacion de #{n1} y #{n2} es #{CB.multiplicacion(n1,n2)} ")
    IO.puts(" ")
    IO.puts("Modulo Calculadora Cientifica")
    IO.puts("El cuadrado de #{n1} es #{CC.cuadrado(n1)} ")
    IO.puts("El cubo de #{n1} es #{CC.cubo(n1)} ")
    IO.puts("El resutado de la division de #{n1} y #{n2} es #{CC.div(n1,n2)} ")
    IO.puts(" ")
    IO.puts("Modulo Area")
    IO.puts("El area de un cuadrado de #{n1}cm de lado es #{Area.area(n1)} ")
    IO.puts("El area de un rectangulo de #{n1} y #{n2}cm de lado es #{Area.area(n1,n2)} ")
    IO.puts("El area de un rombo es de #{Area.area(n1,n2,n3,n4)} ")
  end
end
