# Keep asking user for input and add their input to an array until they type "exit".
# After that print out the number of input they've entered. For example print:
# You've entered 10 inputs

array = []
input = ""
until input == "exit"
  print "Hit me (or 'exit' to give up): "
  input = gets.chomp.strip
  array << input unless input.empty? || input.nil? || input == "exit"
end

puts "You've entered #{array.count} inputs."
