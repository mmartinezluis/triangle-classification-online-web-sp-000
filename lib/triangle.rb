class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    @sorted = [ ]
  end

  def kind
    binding.pry
    if (@a>0 && @b>0 && @c>0) && (@a + @b >= @c)
      if (@a == @b && @b == @c)
        :equilateral
      elsif (@a == @b || @a == @c || @b == @c)
        :isosceles
      elsif (@a != @b && @b != @c)
        :scalene
      end
    else
      begin
        raise TriangleError
      end
    end
  end

  class TriangleError < StandardError
  end
end
