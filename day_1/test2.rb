# Flow control.
puts "1. If condition."
print "Give me a number: "
number = gets.to_i

# For readability, parenthesis and semicolons are ommitted in Ruby
# if (number > 10)
if number > 10
  # if the given exp eval to true then this code will exec
  puts "The number is large."
elsif number > 5
  puts "The number is medium."
else
  # if the given exp eval to false then this code will exec
  # in Ruby everything will eval to true except for false and nil
  puts "The number is small."
end


# Car age.
print "Enter year of car: "
year = gets.to_i

if year > 2015
  puts "Future"
elsif year >= 2010
  puts "New"
elsif year >= 2000
  puts "Old"
else
  puts "Very Old"
end


# Grade.
print "Enter your test score: "
score = gets.to_i

if score >= 98
  puts "You got an A!"
elsif score >= 90
  puts "You got a B!"
elsif score >= 80
  puts "You got a C!"
elsif score >= 70
  puts "You got a D!"
else
  puts "You got an F?!"
end
# Alternative method
grade = if score >= 98
          "A"
        elsif score >= 90
          "B"
        elsif score >= 80
          "C"
        elsif score >= 70
          "D"
        else
          "F"
        end

puts "You got #{grade}!"


# Loops
puts "2.1 While Loop"
x = 1

# This is an infinite loops because x is always less than 10
# while x < 10
#  puts x
# end

while x < 10
  puts x
  # x = x + 1
  x += 1
end

puts "1 to 50 using while loop."
x = 1
while x <= 50
  print x, " "
  x += 1
end

puts ""

puts "50 to 1 using while loop."
x = 50
while x >= 1
  print x, " "
  x -= 1
end

puts ""

# For Loop
# 1..5 inclusive. Starts at 1, ends with 5
# 1...5 exclusive. Starts at 1, ends with 4

puts "2.2 For Loop"
print "Enter a number: "
num = gets.to_i

if num < 100
  for i in num..100
    print i, " "
  end
end

puts ""

puts "2.3 FIZZ BUZZ"
for i in 1..100
  output = if i % 15 == 0
            "FIZZBUZZ"
          elsif i % 3 == 0
            "FIZZ"
          elsif i % 5 == 0
            "BUZZ"
          else
            i
          end
    print "#{output},"
end

puts ""
