# Write some code that keeps asking use for book names
# until the user enters "exit". After typing exit the program should display
# all the entered book names sorted.

def your_books
  hash = {}
  input = ""
  puts "Title of book to add (exit to stop): "
  until input.downcase == "exit"
    input = gets.chomp.strip
    hash[input] = 0 if input != "exit"
  end
  print hash.keys.sort
end

your_books
puts "\n"
