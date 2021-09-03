# Ruby challenges: Easy 1 - Triangles
# Write a program to determine whether a triangle is equilateral, isosceles, or scalene.

class Triangle
  attr_reader :sides

  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]
    valid_triangle(sides)
  end

  def kind
    if sides.uniq == [sides.first]
      'equilateral'
    elsif sides.uniq.size == 2
      'isosceles'
    elsif sides.uniq == sides
      'scalene'
    end
  end

  private

  def any_two_sides_larger_than_another?(arr)
    arr.combination(2) do |combo| 
      return true if
        arr.any? do |side| 
          combo.reduce(&:+) <= side 
        end
    end
    false
  end
  
  def valid_triangle(arr)
    if arr.any? { |side| side <= 0 } || any_two_sides_larger_than_another?(arr)
      raise ArgumentError.new("Invalid triangle")
    else
      arr
    end
  end

end
