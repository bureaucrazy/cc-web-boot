class Car
  def initialize(brand, model, capacity)
    # @brand = brand
    # @model = model
    # @capacity = capacity

    # Can also assign using one line like below
    @brand, @model, @capacity = brand, model, capacity
  end

  def self.max_speed
    200
  end

  def drive(to_speed)
    # the @ before the var name makes it an instance variable
    # no @ is a local var with scope within the method only
    @speed = to_speed
    puts ignite_engine
    "Let's go!"
  end

  def stop
    "You've stopped from speed #{@speed}"
  end

  def park
    "No idling please."
  end

  private
  def pump_gas
    "Pump!"
  end

  def ignite_engine
    "Ignition!"
  end
end
