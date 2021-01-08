defmodule CalculadoraTest do
  use ExUnit.Case
  doctest Calculadora

  test "area trapecio" do
    assert Calculadora.Area.trapecio(3,4,5)==17.5
  end

  test "area rombo" do
    assert Calculadora.Area.rombo(16,12) == 96.0
  end

  test "area poligono" do
    assert Calculadora.Area.poligono(8,6) == 129.06655105818987
  end

  test "area cubo" do
    assert Calculadora.Area.cubo(5) == 150.0
  end

  test "area cilindro" do
    assert Calculadora.Area.cilindro(4,5) == 87.96459430051421
  end

  test "Perimetro trapecio" do
    assert Calculadora.Perimetro.trapecio(15,12,6) == 39.36931687685298
  end

  test "Perimetro rombo" do
    assert Calculadora.Perimetro.rombo(4) == 16
  end

  test "Perimetro poligono" do
    assert Calculadora.Perimetro.poligono(8,6)==48
  end

  test "Perimetro cubo" do
    assert Calculadora.Perimetro.cubo(5)==60
  end

  test "Perimetro cilindro" do
    assert Calculadora.Perimetro.cilindro(4,5) == 62.83185307179586

  end




end
