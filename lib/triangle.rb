require("pry")

class Triangle
  attr_accessor(:side1, :side2, :side3)
  
  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def find_type
    if (@side1 + @side2 <= @side3) || (@side2 + @side3 <= @side1) || (@side1 + @side3 <= @side2)
      "This is not a triangle."
    elsif (@side1 == @side2) && (@side2 == @side3)
      "This is an equilateral triangle."
    elsif ((@side1 == @side2) && (@side1 != @side3)) || ((@side2 == @side3) && (@side2 != @side1)) || ((@side1 == @side3) && (@side1 != @side2))
      "This is an isosceles triangle."
    else
      "This is a scalene triangle."
    end
  end
end