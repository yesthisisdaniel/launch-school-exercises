# Your code goes here
irb(main):151* class MyCar
irb(main):152*   attr_reader :year, :color, :model
irb(main):153*   attr_accessor :speed 
irb(main):154*   def initialize(year, color, model)
irb(main):155*     @year = year
irb(main):156*     @color = color
irb(main):157*     @model = model
irb(main):158*     @speed = 0
irb(main):159*     @engine_status = "off"
irb(main):160*   end
irb(main):161*   
irb(main):162*   def ignition(key)
irb(main):163*     if key == "in"
irb(main):164*       @engine_status = "on"
irb(main):165*     end
irb(main):166*   end
irb(main):167*   
irb(main):168*   def accelerate(kmh)
irb(main):169*     if @engine_status == "off"
irb(main):170*       puts "Please turn car on"
irb(main):171*     else
irb(main):172*       @speed += kmh
irb(main):173*     end
irb(main):174*   end
irb(main):175*   
irb(main):176*   def brake(kmh)
irb(main):177*     if @speed == 0
irb(main):178*       return
irb(main):179*     else
irb(main):180*       @speed = @speed - kmh
end
end
  
def shut_down(key)
if key == "out"
@engine_status = "off"
@speed = 0
end
end
end
