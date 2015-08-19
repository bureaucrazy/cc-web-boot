# Make two classes dog and bones.
# The dog class must have initialize method that takes dog's color and type.
# The bone must have an initialize method that assigns a size for the bone.
#
# The dog class must have a give method that takes a bone object and
# add it it to an array of bones for the dog.
# The dog can take a maximum of three bones so
# if you give it more than three it will will print, I have too many bones.
#
# The dog class must have a eat bone that when you call it it removes a bone
# from the array of bones and print "yummy! I ate 'big' bone" the 'big' part
# comes from the size attribute of bone.

require "./dogs.rb"
require "./bones.rb"

# array = %w(White Brown Black Gray)
# puts "Please choose your dog's color from the list below:"
# for n in 1..(array.count)
#   puts "(#{n}) #{array[(n - 1)]}"
# end
# puts "\n"
# print "Type the number of your choice: "
# input = gets.to_i
# input = 0 if input < 0 || input > (array.count - 1)
# color = array[(input - 1)]
#
# array = %w(Husky Pomeranian Retriever Shepherd Pincher)
# puts "Please choose your dog's breed from the list below:"
# for n in 1..(array.count)
#   puts "(#{n}) #{array[(n - 1)]}"
# end
# puts "\n"
# print "Type the number of your choice: "
# input = gets.to_i
# input = 0 if input < 0 || input > (array.count - 1)
# type = array[(input - 1)]

color = ""
type = ""
input = ""

2.times do |question|
  case question
  when 0; array = %w(White Brown Black Gray)
  when 1;array = %w(Husky Pomeranian Retriever Shepherd Pincher)
  end

  case question
  when 0; puts "Please choose your dog's color from the list below:"
  when 1; puts "Please choose your dog's breed from the list below:"
  end

  for n in 1..(array.count)
    puts "(#{n}) #{array[(n - 1)]}"
  end
  puts "\n"
  print "Type the number of your choice: "
  input = gets.to_i
  input = 0 if input < 0 || input > (array.count - 1)

  case question
  when 0; color = array[(input - 1)]
  when 1; type = array[(input - 1)]
  end
end

bone1 = Bones.new "small"
bone2 = Bones.new "medium"
bone3 = Bones.new "large"
bowl1 = 3
bowl2 = 4
bowl3 = 5
dog = Dogs.new color, type

system("clear")
puts "Congratulations new owner of a #{color} #{type}."
puts "\n"
until input == 9
  puts "Please choose an action: "
  puts "(1) Use small bowl"
  puts "(2) Use medium bowl"
  puts "(3) Use large bowl"
  puts "(4) Give small bone"
  puts "(5) Give medium bone"
  puts "(6) Give large bone"
  puts "(7) Eat a bone"
  puts "(9) Exit program"
  puts "\n Type the number of your choice: "
  input = gets.to_i

  system("clear")

  case input
  when 1; dog.bowl_size = 3
  when 2; dog.bowl_size = 4
  when 3; dog.bowl_size = 5
  when 4; puts "#{dog.give bone1}\n"
  when 5; puts "#{dog.give bone2}\n"
  when 6; puts "#{dog.give bone3}\n"
  when 7; puts "#{dog.eat_bone}\n"
  when 9; puts "Good bye!"
  else; puts "I don't understand that."
  end
end
