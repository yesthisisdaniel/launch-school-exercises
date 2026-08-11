# Your code goes here
module Towable
  def can_tow?(kilograms)
    kilograms < 1000
  end
end

class Vehicle
  
  attr_reader :year, :color, :model, :make
  attr_accessor :speed, :engine_status
  
  @@number_of_descendants = 0
  @creation = Time.new
  
  def self.print_number_of_descendants
    p @@number_of_descendants
  end

  def age
    age_calc
  end

  def initialize(year, color, make, model)
    @year = year
    @color = color
    @model = model
    @make = make
    @speed = 0
    @engine_status = "off"
    @@number_of_descendants += 1
  end
  
  def to_s 
    "This is a #{year}, #{color} colored #{make} #{model}"
  end
  
   def self.gas_mileage(miles, gallon)
    miles / gallon
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

private

  def age_calc
    Time.now.year- self.year
  end
end

class MyCar < Vehicle
end

class MyTruck < Vehicle
  include Towable
end
