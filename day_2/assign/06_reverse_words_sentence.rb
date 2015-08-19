# Write a method that takes a string as a sentence and returns
# the sentence reversed (consider words are separated by one or more spaces).

def reverse_the_sentence(s_input)
  input = s_input.strip
  exit if input.empty? || input.nil?

  # Turn string into array of characters
  array = input.chars
  # New array
  array2 = []
  # Init temporary containers for words and spaces
  word = ""
  space = ""

  # Iterate through array of characters (including spaces)
  for x in 0..(array.count - 1)
    # If it's a space
    if array[x] == " "
      # Transfer value of word var to new array if it has value
      array2 << word if word.empty? == false
      word = ""
      # Add to space container
      space = space + array[x]
    else
      # Transfer value of space var to new array if it has value
      array2 << space if space.empty? == false
      space = ""
      # Add to word container
      word = word + array[x]

      # Only performs this for the last character since
      # lead/trail spaces are stripped
      array2 << word if x == (array.count - 1)
    end
  end

  puts input
  print array2.reverse.join
  puts "\n"
end

puts "Enter a sentence to be reversed: "
input = gets.chomp
reverse_the_sentence input
