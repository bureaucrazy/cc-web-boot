# Find a way that will return the letter that occurred most in a given string.
# For instance if you give it: Hello it will give back the letter: l

puts "Type something here and I will display the most occuring letter: "
input = gets.chomp.strip
exit if input.empty? || input.nil?

array = []
array = input.downcase.gsub(/[^a-z]/,"").chars.compact
array.delete(" ")
hash = Hash.new(0)
array.each {|v| hash[v] += 1}
# Gets highest value and displays key matching that value.
hash.each {|k,v| puts "#{k}:#{v}" if v == hash.values.max}
