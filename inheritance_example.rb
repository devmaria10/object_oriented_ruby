class Vehicle
  def initialize()
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end 

class Car < Vehicle

  def initialize(input_options)
    super()
    @fuel = input_options[:fuel]
    @make = input_options[:make]
    @model = input_options[:model] 
  end

  def honk_horn
    puts "Beeeeeeep!"
  end

  def fuel
    @fuel
  end

  def make
    @make
  end 

  def model
    @model
  end

end

class Bike < Vehicle 
  def initialize(input_options)
    super()
    @speed = input_options[:speed]
    @type = input_options[:type]
    @weight = input_options[:weight]
  end 

  def speed
    @speed
  end

  def type
    @type
  end

  def weight
    @weight
  end 

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new
bike = Bike.new(
                speed: 15,
                weight: 27,
                type: "mountain"
                )
p car
p bike

car.honk_horn
bike.ring_bell 
bike.turn("South")
