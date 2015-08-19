# Build a class Animal that has two methods
# "eat" that prints "I'm eating" and
# "walk" that prints "I'm walking"
#
# Now build a class called Dog that inherits from the Animal class.
# Add a new method to this class called bark that returns woof.
# Override the eat methods and make it print whatever
# the Animal class eat method prints and then print "bones are yummy"
#
# Now build a class called Cat that inherits from the Animal class.
# Override the eat methods and make it print "I love Fish"

require "./cat.rb"
require "./dog.rb"

dog = Dog.new
cat = Cat.new

dog.bark
dog.eat
cat.eat
dog.walk
cat.walk
