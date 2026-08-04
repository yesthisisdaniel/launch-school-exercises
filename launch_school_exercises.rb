# Your code goes here
class MyCar
  attr_reader :year, :color, :model, :make
  attr_accessor :speed 

  def self.gas_mileage(miles, gallon)
    miles / gallon
  end
  
  def initialize(year, color, make, model)
    @year = year
    @color = color
    @model = model
    @make = make
    @speed = 0
    @engine_status = "off"
  end

  def to_s 
    "This is a ${@year}, ${@color} colored ${@make} ${@model}"
  end
  
  def ignition(key)
    if key == "in"
      @engine_status = "on"
    end
    end
  
  def accelerate(kmh)
    if @engine_status == "off"
      puts "Please turn car on"
    else
      @speed += kmh
      end
    end
 
  def brake(kmh)
    if @speed <= 0
      return
    else
      @speed = @speed - kmh
    end
    end
  
  def shut_down(key)
    if key == "out"
      @engine_status = "off"
      @speed = 0
    end
  end
end
