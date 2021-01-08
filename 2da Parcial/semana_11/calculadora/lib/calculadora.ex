defmodule Calculadora do
  @moduledoc """
  Modulo Calculadora que contiene 2 submodulos, el primer modulo sirve para sacar el area y el segundo para sacar el perimetro de
  1-trapecio
  2.-Rombo
  3.- Polígono de 5 lados o más
  4.- Cubo
  5.- Cilindro recto
  Hecho por Edson Paul Morfin Gallardo

  ## Examples
      iex>Calculadora.Area.trapecio(3,4,5)
      17.5

      iex>Calculadora.Area.rombo(16,12)
      96.0

      iex>Calculadora.Area.poligono(8,6)
      129.06655105818987

      iex>Calculadora.Area.cubo(5)
      150.0

      iex>Calculadora.Area.cilindro(4,5)
      87.96459430051421

      iex>Calculadora.Perimetro.trapecio(15,12,6)
      39.36931687685298

      iex>Calculadora.Perimetro.rombo(4)
      16

      iex>Calculadora.Perimetro.poligono(8,6)
      48

      iex>Calculadora.Perimetro.cubo(5)
      60

      iex>Calculadora.Perimetro.cilindro(4,5)
      62.83185307179586



  """



  defmodule Area do
    @moduledoc """
    Modulo Area, contiene las funciones necesarias para obtener el area de un trapecio, rombo, poligono de 5 lados o mas, cubo y cilindro recto
    """

    @doc """
    Funcion que obtiene el area de un trapecio donde bM es base Mayor , bm es baseMenor y h es altura
    """
    def trapecio(bm,bM,h) do
      ((bM+bm)/2)*h
    end

    @doc """
    Funcion que obtiene el area de un rombo donde dM es diametro Mayor y dm es diametro Menor
    """

    @spec rombo(number, number) :: float
    def rombo(dM,dm), do: (dM*dm)/2


    @doc """
    Funcion que obtiene el area de un poligono donde nL es numero de lados y l es el tamaño de un lado
    """
    def poligono(nL,l) do
      apotema=Calculadora.Globales.apotema(nL,l)
      perimetro=Calculadora.Perimetro.poligono(nL,l)
      (perimetro*apotema)/2
    end



    @doc """
    Funcion que obtiene el area de un cubo donde a es el tamaño de un arista
    """
    def cubo(a), do: 6*:math.pow(a,2)



    @doc """
    Funcion que obtiene el area de un cilindro donde d es diametro y h es altura
    """
    def cilindro(d,h) do
      2*:math.pi()*Calculadora.Globales.radio(d)*(Calculadora.Globales.radio(d)+h)
    end
  end

  defmodule Perimetro do
    @moduledoc """
    Modulo que contiene las funciones para sacar el perimetro de trapecio, rombo, poligono, cubo y cilindro
    """

    @doc """
    funcion que obtiene el perimetro de un trapecio, bm es base menor, bM es base mayor y h la altura
    """
    def trapecio(bm,bM,h), do: (2*Calculadora.Globales.pitagoras(bm,bM,h))+bm+bM

    @doc """
    funcion que obtiene el perimetro de un rombo, l es la longitud de un lado
    """
    def rombo(l), do: l*4

    @doc """
    funcion que obtiene el perimetro de un poligono regular, nL es numero de lados y l la longitud de un lado
    """
    def poligono(nL,l), do: nL*l  #poligono regular

    @doc """
    funcion que obtiene el perimetro de un cubo, a es el tamaño del arista
    """
    def cubo(a), do: 12*a

    @doc """
    funcion que obtiene el perimetro de un cilindro, d es el diametro de la base y h es la altura del cilindro
    """
    @spec cilindro(number, number) :: float
    def cilindro(d,h) do
      2*:math.pi()*Calculadora.Globales.radio(d)*h
    end
  end

  defmodule Globales do
    @moduledoc """
    Modulo Globales, la utilidad de este modulo es liberar la memoria al no escribir varias veces la misma formula
    """

    @doc """
    funcion que obtiene el apotema de un poligono regular, n es el numero de lados y l el tamano de los lados
    """
    def apotema(n,l) do
      angulocentral=360/n
      l/(2*:math.tan(angulocentral/2))
    end

    @doc """
    funcion que obtiene el radio de alguna figura, d es el diametro
    """
    def radio(d) do
      d/2
    end

    @doc """
    funcion que obtiene la hipotenusa de un triangulo, en este caso es usado para un trapecio por lo que primero se saca la longitud del cateto adyacente
    bm es base menor, bM es base mayor y h es la altura
    """
    def pitagoras(bm,bM,h) do
      a=(bM-bm)/2
      :math.sqrt(:math.pow(a,2)+:math.pow(h,2))

    end
  end


end
