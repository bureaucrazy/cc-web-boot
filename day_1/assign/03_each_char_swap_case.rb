# Take a string and find a way to display each character
# on a new line with its case swapped so if I give: Hello
# I will get:
#
# h
# E
# L
# L
# O

print "Enter a string: "
str = gets.chomp
str.each_char {|c| puts "#{c.swapcase}"}
