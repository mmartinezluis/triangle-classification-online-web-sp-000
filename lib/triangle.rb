class Triangle
  # write code here
  attr_accessor :a, :b, :case

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if (@a == @b && @b == @c) && (@a>0 && @b>0 && @c>0 && @a + @b > @c)
      :equilateral
    elsif (@a == @b || @a == @c || @b == @c) && (@a>0 && @b>0 && @c>0 && @a + @b > @c)


end
