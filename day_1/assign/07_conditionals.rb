# Write a code that will check if a given variable
# is greater than 10 then it will print "Hello World".
# If it's greater than 100 it will print "Hello Universe".
# Otherwise it will do nothing.

print "Enter a number: "
input = gets.to_i
if input > 100
  puts "Hello Universe"
elsif input > 10
  puts "Hello World"
end
