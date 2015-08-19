# Write a method that checks whether a passed String is a palindrome or not.
# A palindrome is a string that reads that same both ways for instance: sugnangus

def palindrome (string)
  exit if string.empty? || string.nil?
  input = string.strip

  puts input == input.reverse

end

print "Type word(s) to check if a palindrome: "
palindrome gets.chomp
