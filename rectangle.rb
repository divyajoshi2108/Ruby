class Rectangle
  attr_writer :width, :height
  attr_reader :area
  def initialize(h,w)
    @height=h
    @width=w
  end

=begin
  def height
    @height
  end
  def width
    @width
  end
  def height=(h)
    @height=h
  end
  def width=(w)
    @width=w
  end
=end
  def print
    puts "#{@height} #{@width}"
  end
  def area
    @area=@height * @width
  end
end

rect=Rectangle.new(10,9)
rect.print
puts rect.area
#puts rect.width
#puts rect.height
rect.height =20
rect.width =100
rect.print
