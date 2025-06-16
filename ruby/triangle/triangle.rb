class Triangle
  def initialize(sides)
    @a, @b, @c = sides
  end

  def triangle_inequality_holds
    @a + @b >= @c &&
    @b + @c >= @a &&
    @a + @c >= @b
  end

  def equilateral?
    @a == @b && @b == @c && @a!= 0
  end

  def isosceles?
    triangle_inequality_holds && (@a == @b || @b == @c || @a == @c)
  end

  def scalene?
    triangle_inequality_holds && (@a != @b && @b != @c && @a != @c)
  end
end
