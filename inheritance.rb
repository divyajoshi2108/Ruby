class Vehicle
  def initialize(no_of_tyres,no_of_seats)
    @tyres=no_of_tyres
    @seats=no_of_seats
  end
  def move(obj)
    puts "#{obj.class} is moving with #{@tyres} tyres and #{@seats} seats"
  end
end
class Car < Vehicle

end
class Bike < Vehicle

end
car=Car.new(4,4)
car.move(car)
bike=Bike.new(2,2)
bike.move(bike)

