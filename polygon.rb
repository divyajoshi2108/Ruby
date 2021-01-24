class Polygon
  def initialize(a,b)
    @s1=a
    @s2=b
    puts "Polygon initialize"
  end
  def area
    puts "Area of Polygon"
  end
  private
  def private_meth
    puts "I am polygon's private method"
  end
  protected
  def protected_meth
    puts "I am polygon's protected method"
  end
end
class Square < Polygon
  def initialize(s)
    super(1,2)
    @s1= s
    @s2=s
    #self.private_meth

    self.protected_meth
    protected_meth

  end
  def area
    @area=@s1*@s2
    puts "Area of Square #{@area}"
  end
  def self.print
    puts "This is a square class"
  end

end
class Triangle < Polygon
  def initialize(h,b)
    @height=h
    @base=b
  end
  def area
    puts "Area of Triangle"
  end
end
class Rectangle < Polygon
  def initialize(l,b)
    @length=l
    @breadth=b
  end
  def area
    puts "Area of Rectangle"
  end
end
#poly=Polygon.new

sq=Square.new(5)
#Square.print
sq.area

