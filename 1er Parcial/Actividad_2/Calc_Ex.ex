defmodule Calculadora do
  def suma(n1, n2) do
    n1 + n2
  end
  def resta(n1,n2) do
    n1 - n2
  end
  def multiplicacion(n1, n2) do
    n1 * n2
  end
  def division(n1,n2) do
    n1 / n2
  end

  def cuadrado(n1) do
    n1 * n1
  end

  def inverso(n1) do
    1 / n1
  end
  def cubo(n1) do
    n1*n1*n1
  end
end

defmodule Calculadora2 do
  def suma(n1,n2), do: n1+n2
  def resta(n1,n2), do: n1-n2
  def multiplicación(n1,n2), do: n1*n2
  def division(n1,n2), do: n1/n2
  def cuadrado(n1), do: n1*n1
  def inversio(n1), do: 1/n1
  def cubo(n1), do: n1*n1*n1
end
