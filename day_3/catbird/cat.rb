require "./animal.rb"

class Cat < Animal
  def catch(prey)
    if speed < prey.speed && rand(100) % 2 == 0 then
      puts "The bird #{prey.name}:#{prey.speed} escaped #{name}:#{speed} the cat."
    else
      puts "The cat #{name}:#{speed}, caught #{prey.name}:#{prey.speed} the bird."
    end
  end

  def eat
    puts "Yum"
  end
end
