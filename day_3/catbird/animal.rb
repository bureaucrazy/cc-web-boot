class Animal
  attr_accessor :name
  attr_accessor :speed

  def initialize(name, speed=50)
    @name, @speed = name, speed
  end
end
