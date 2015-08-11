# rvm install <version> - installs specific ruby version
# rvm list - lists ruby versions installed on computer
# which ruby - shows path of ruby used

# terminal commands:
# ls -lha
# display current directory including hidden and sorted by alpha

# less
# like Cat but display friendly and can scroll

# tail -f
# displays last page of file with -f option auto-refresh

# ~
# the tilde refers to home directory

# .
# the dot refers to current directory

# cp -r
# copies an entire directory

# rm -r
# deletes an entire directory

# grep <'string'> <file>
# output lines with matching string from the specified file

# User input and prints as output
print "Give your first name: "
name = gets.chomp

puts name

# Output variable in reverse case
puts "1. In reverse case."
puts name.swapcase

# Output variable where repeated characters are replaced single instance
puts "2. Without repeating characters."
puts name.squeeze

puts "3. Without repeating a specified character"
puts name.squeeze(" ")

# Output substitute a word with another
puts "4. Using string substitution."
puts "Hello ".gsub("Hello", "Hi") + name

# String interpolation. Pass var to another var
puts "5. Using string interpolation."
msg = "Hello "
greeting = "#{msg} #{name}"

# Using float
puts "6.1 As integer."
puts "10 / 4 = #{10 / 4}"
puts "6.2 As float."
puts "10.0 / 4 = #{10.0 / 4}"

# Using modulo
puts "7. Getting the remainder or testing if perfectly divisible."
puts "10 % 4 = #{10 % 4}"
puts "10 % 2 = #{10 % 2}"

# Using exponents
puts "8. Exponents"
puts "2 ^ 8 = #{2**8}"

# Using multiplication using two user inputs
puts "9. Multiplication"
print "Enter number 1: "
num1 = gets.to_i

print "Enter number 2: "
num2 = gets.to_i

puts "#{num1} x #{num2} = #{num1 * num2}"

# Logical operators
puts "10. Logical operators"
puts "|| = OR"
puts "&& = AND"
puts "--------"
puts "True || True = True"
puts "True || False = True"
puts "False || True = True"
puts "False || False = False"
puts "True && True = True"
puts "True && False = False"
puts "False && True = False"
puts "False && False = False"
