# Write a code that will prompts a user to enter a sentence and
# then prints out a hash whose keys are the letter and values are the
# number of occurrences of that letter,
# for example if use enters "hello world" will generate:
# {"h" => 1, "e" => 1, "l" => 3, "o" => 2, "w" => 1, "d" => 1}

def frequency(string)
  exit if string.empty? || string.nil?
  input = string.downcase
  array = input.chars

  hash = Hash.new(0)
  array.each {|n| hash[n] += 1 unless n.strip.empty?}
  puts "Input is '#{string}'"
  print hash
end

frequency "where do you want to go today?"
puts "\n"
