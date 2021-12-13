require("rspec")
require("triangle")

describe ("#Triangle") do
  triangle = Triangle.new(1,1,1)
  it("should make a new triangle with three sides as properties") do
    expect(triangle.side1).to(eq(1))
    expect(triangle.side2).to(eq(1))
    expect(triangle.side3).to(eq(1))
  end

  it("should return 'This is not a triangle.' when find_type method is called and sum of any two sides is less than or equal the other side") do
    triangle.side2 = 9
    expect(triangle.find_type).to(eq("This is not a triangle."))
    triangle.side2 = 2
    expect(triangle.find_type).to(eq("This is not a triangle."))
  end

  it("should return 'This is not a triangle.' when find_type method is called and sum of any two sides is less than or equal the other side") do
    triangle.side2 = 2
    expect(triangle.find_type).to(eq("This is not a triangle."))
  end

  it("should return 'This is an equilateral triangle.' when find_type method is called and all sides are equal") do
    triangle.side2 = 1
    expect(triangle.find_type).to(eq("This is an equilateral triangle."))
  end

  it("should return 'This is an isosceles triangle.' when find_type method is called and exactly 2 sides are equal") do
    triangle.side1 = 3
    triangle.side2 = 2
    triangle.side3 = 2
    expect(triangle.find_type).to(eq("This is an isosceles triangle."))
  end

  it("should return 'This is an scalene triangle.' when find_type method is called and exactly 0 sides are equal") do
    triangle.side1 = 3
    triangle.side2 = 4
    triangle.side3 = 5
    expect(triangle.find_type).to(eq("This is a scalene triangle."))
  end
end
