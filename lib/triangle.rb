class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  def kind
    validate_triangle
    if a==b && b==c
      :equilateral
    
    elsif a == b || b == c || a == c

        :isosceles      
    else
      :scalene
    end

  end

  def validate_triangle
    raise TriangleError unless [a,b,c].all?(&:positive?) 
  end

  class TriangleError < StandardError
  end


end
