# Creamos la clase Figure, con las funciones básicas de una figura geometrica
class Figure
  attr_reader :area, :perimeter
end

# Creamos la clase Rectangle que recibe 2 parametros base y altura. Y partir
# de estos datos calculamos el area y el perimetro. Podemos acceder a las
# variables de instancia @area y @perimeter por que heredamos las funciones
# de la clase Figure
class Rectangle < Figure
  def initialize(base, height)
    @base = base
    @height = height
    @area = @base * @height
    @perimeter = @base * 2 + @height * 2
  end
end

# Creamos la clase Square que recibe 2 parametros, base y height y corre el método
# initialize de la clase Rectangle, de este modo no tenemos que definir nuevamente
# las variables de instancia ni los calculos de area y perimetro utilizando la
# palabra clave super
class Square < Rectangle
  def initialize(base, height)
    @base = base
    @height = height
    if is_square?
      @area = @base * @height
      @perimeter = @base * 2 + @height * 2
    else
      @area = "No se puede calcular el area"
      @perimeter = "No se puede calcular el perimetro"
    end
  end

  private
  def is_square?
    @base == @height
  end
end

class Circle < Figure
  def initialize(radius)
    @radius = radius
    @area = Math::PI * @radius ** 2
    @perimeter = 2 * Math::PI * @radius
  end
end

r1 = Rectangle.new(2, 4)
puts r1.area
puts r1.perimeter

c1 = Circle.new(3)
puts c1.area
puts c1.perimeter

s1 = Square.new(2, 2)
puts s1.area
puts s1.perimeter

s2 = Square.new(2, 3)
puts s2.area
puts s2.perimeter
puts Square.class
