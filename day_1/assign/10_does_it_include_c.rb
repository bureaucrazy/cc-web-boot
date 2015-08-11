# Write a code that takes user's input and then prints out "Yes it has C"
# if entered input contains the letter "C" (upper or lower case).
# And it prints "There is no C" if it doesn't

puts "Enter value to check for letter C: "
input = gets.chomp.strip.downcase

c_count = input.count("c")

if c_count > 0
  puts "Yes it has C."
else
  puts "There is no C."
end
