# Ask user for a number then print out the number multiplied by 5
# and then the same number added to itself.

print "Enter a number: "
num = gets.to_i

puts "Multiplied by 5.\n#{num} x 5 = #{num * 5}"
puts "Added to itself.\n#{num} + #{num} = #{num + num}"
