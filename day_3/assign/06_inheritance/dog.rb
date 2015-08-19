require "./animal.rb"

class Dog < Animal
  def bark
    puts "Woof!"
  end

  def eat
    puts "Eating bone!"
    puts "Bones are yummy!"
  end
end
