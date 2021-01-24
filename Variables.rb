$global_variable=10;


class Test
  CONST=2
  def initialize(id , name)
    @test_id=id
    @test_name=name
  end
  def sum(x)
    add=CONST+ $global_variable+ @test_id+ x
    puts "sum = #{add}"
  end
end

test=Test.new(1,"math")
test.sum(3)


  radius=10
  cylinder=Cylinder.new(10)

puts cylinder.volume(radius)



