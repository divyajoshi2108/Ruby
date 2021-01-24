
=begin
class DivisionError < ZeroDivisionError
  def initialize(reason)
    puts reason
    @reason=reason
  end
end
def test
  begin
    n=0
    raise DivisionError, "test" if  10/n
  rescue DivisionError =>e
    puts e

  end
end
test
=end

class DivisionError < ZeroDivisionError
    attr_reader :reason
    def initialize(reason)
        @reason = reason
    end
end

def divide(x, y)
    begin
      # raise DivisionError.new "Cannot divide with zero" if y == 0
        # result = x/y
        puts "After Raised"
    rescue DivisionError => ex
        puts ex.reason
        puts "hello"
    rescue StandardError => ex
        puts ex.message
    end
end

puts divide(10, 0)
