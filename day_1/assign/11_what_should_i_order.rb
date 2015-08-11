# Using case / when statements ask user to enter the coffee shop they want
# to order from and then print: "Grande Latte" if they enter Starbucks
# and "Double Double" if they enter "Tim Hortons"
# and "Medium Coffee" if they enter Blenz
# and "I don't know this shop" if the enter something else.

puts "Welcome to coffee central!"
puts "1. Starbucks"
puts "2. Tim Hortons"
puts "3. Blenz"
print "Select a coffee shop from the choices above. (type a number): "

input = gets.to_i

case
when input == 1
  puts "Grande Latte."
when input == 2
  puts "Double Double."
when input == 3
  puts "Medium Coffee."
else
  puts "I don't know this shop."
end
