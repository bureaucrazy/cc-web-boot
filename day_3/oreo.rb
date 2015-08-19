require "./cookie.rb"

# Cookie is the super (or parent) class,
# while the Oreo is the sub (or child) class
class Oreo < Cookie
  attr_accessor :filling_type

  # this re-defines (or overrides) the method that came with cookie class
  def bake
    "Baking the Oreo cookie"
    # super calls a method with same name in the parent class
    super
  end
end
