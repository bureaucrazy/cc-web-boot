# Reverse engineer the "reverse" method in Arrays which reverses the order of the array.
# Bonus: Try doing it using another way.

array = %w(1 2 3 4 5 6 7 8 9)
puts "Using reverse:"
print array.reverse
puts "\n"
puts "Using sort:"
print array.sort {|first,last| last <=> first}
