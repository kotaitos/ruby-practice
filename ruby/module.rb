# module: 再利用可能なコードの集合
# 名前空間を切り分けたり、ミックスインを使ったりするための仕組み

module Geometry
  PI = 3.141592653589793
  def area
    raise "You must implement #{self.class}##{__method__}"
  end
end

class Circle
  include Geometry

  attr_accessor :radius

  def initialize(radius)
    @radius = radius
  end

  def area
    PI * @radius * @radius
  end
end

class Rectangle
  include Geometry

  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

  def area
    @width * @height
  end
end

circle = Circle.new(10)
p circle.area

rectangle = Rectangle.new(10, 20)
p rectangle.area
