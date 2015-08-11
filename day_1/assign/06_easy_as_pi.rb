# Find out how to get the PI in Ruby and then
# write a formula using that to convert degrees to radians.

puts "PI = #{Math::PI}"
puts "Radians = (Degrees x PI) / 180"
print "Enter a value in degrees to be converted to radians: "
input = gets.to_f
result = (input * Math::PI) / 180
print "Radians = #{result}"
