# To define a class you use the 'class' keyword
# class names must start with a capital letter = classes are treated
# as constants in Ruby
# Use CamelCase naming for class names
# Keep each class in a separate file using snake_case naming.

class Cookie

  # this method is called when creating new instance
  # c = Cookie.new(10, 20)
  def initialize(sugar_amount, flour_amount)
    @sugar_amount = sugar_amount
    @flour_amount = flour_amount
  end

  # this is a public method that returns the instance var @sugar_amount
  # this is a GETTER method
  # def sugar_amount
  #   @sugar_amount
  # end
  attr_reader :sugar_amount

  # this is a public method that sets the instance variable @sugar_amount
  # this is a SETTER method
  # def sugar_amount=(new_amount)
  #   @sugar_amount
  # end
  attr_writer :sugar_amount

  # attr_reader :flour_amount
  # attr_writer :flour_amount
  attr_accessor :flour_amount

  # Playing with class variables
  # Not advisable to use as it affects all objects
  # def set_color(color)
  #   @@color = color
  # end
  #
  # def show_color
  #   @@color
  # end

  # this defines an instance (or object) method called 'bake'
  # this is a public method that can only be called by class instance
  def bake
    "Baking the cookie."
  end

  def eat
    puts dip_in_milk
    "Eating the cookie."
  end

  # this defines a pub class method that can only be called by the class
  # Cookie.info
  # or <instance>.class.info
  def self.info
    puts extra_info
    "I'm a Cookie class"
  end

  private

  def self.extra_info
    puts "I'm a super cookie class"
  end

  def dip_in_milk
    "Dipping the cookie in the milk."
  end
end
