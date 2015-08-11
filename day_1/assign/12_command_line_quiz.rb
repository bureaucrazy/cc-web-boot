# Build a command line quiz where it prompts the user with a three questions like:
# How many sides does a hexagon have?
# 1- five
# 2- six
# 3- seven
# Enter the correct number:
# The user can then enter the correct number of the question.
# At the end it will display:
# You got 2 out of 3 questions correctly.

puts "Welcome to the 3 question game!"
puts "Are you ready? (y/n): "
input = gets.chomp.strip.downcase
score = 0
question = 0

if input == "n"
  puts "You got #{score} out of 3 questions correct! Good bye!"
  exit
end

3.times do
  question += 1
  print "Question #{question}: "
  case
  when question == 1
    puts "What color is an orange?"
    puts "1. White"
    puts "2. Orange"
    puts "3. Pink"
  when question == 2
    puts "How many wheels does a bicycle have?"
    puts "1. One"
    puts "2. Two"
    puts "3. Three"
  when question == 3
    puts "How many continents are there in the world?"
    puts "1. Five"
    puts "2. Six"
    puts "3. Seven"
  end

  print "Your answer: "
  input = gets.to_i
  score += 1 if input == 2 && question == 1
  score += 1 if input == 2 && question == 2
  score += 1 if input == 3 && question == 3
end

puts "You got #{score} out of 3 questions correctly."
