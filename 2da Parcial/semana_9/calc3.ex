defmodule AreasFiguras do
  @moduledoc "Calcula el area de un cuadrado, un rectangulo y un Rombo"
  def area(a,b),do: a*b
  @doc "Area de un rectangulo, recibe 2 argumentos"
  def area(n1), do: n1*n1
  @doc "Area de un cuadrado, recibe 1 argumento"
  def area(a1,a2,b1,b2\\5), do: ((a1+a2)*(b1+b2))/2
  @doc "Area de un rombo, recibe 4 argumentos"
end
