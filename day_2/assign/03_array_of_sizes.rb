# Given an array of words. Return back an array of numbers that contains
# the length of each word in the first array in the same order.

def array_of_words (s_words)
  input = s_words.split
  array = []

  input.each {|x| array << x.length}

  puts "Input: #{s_words}"
  print input, "\n"
  print array, "\n"
end

array_of_words "the quick brown fox"
