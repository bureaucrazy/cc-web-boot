# array = []
#
# array.push(1)
#
# array.pop
#
# array.insert()
#
# array.delete_at()

def lesson_1
  array = [[1,2,3],['a','b','c'],[0,0,0]]

  # Display number of array elements
  array.count
  array.length

  # Turn multi-dimension array to single dimension
  array.flatten
end

def lesson_2
  # Turn a string into an array
  string = "Hello CodeCore Students"
  array = string.split(" ")
  puts "2. Turn the string #{string} into an array using .split(delimiter)"
  print array

  puts "\n"
end

def lesson_3
  # FIZZBUZZ into an array
  array = []
  f = "FIZZ"
  b = "BUZZ"

  array = []
  f = "FIZZ"
  b = "BUZZ"

  for n in 1..100
    if n % 15 == 0
      array << f + b
    elsif n % 5 == 0
      array << b
    elsif n % 3 == 0
      array << f
    else
      array << n
    end
  end
  print array

  puts "\n"
end

def lesson_4a
  # Iterate through an array
  puts "4.a. Iterate through array"
  array = [1,2,4,5]
  array.each {|x| puts x * 2}
  print array
end

def lesson_4b
  # Shortcut to turn string into an array
  %w(hello wocde core students)

  # Array with five names, iterate and print as all caps
  # then store into new array
  names = %w(alpha bravo charlie delta echo)
  array = []
  names.each {|n|
      puts n.upcase
      array << n.upcase
  }

  puts "\n"
end

def lesson_5a
  # Input sentence and prints each word all caps
  puts "5.a. Iteration ++"
  puts "Type a sentence to capitalize (press ENTER for default): "
  input = gets.chomp.strip
  input = "the quick brown fox jumped over the lazy dog" if input.empty? || input.nil?
  array = input.split
  array.each {|n|
    n.capitalize!
  }
  print array.join(" ")

  puts "\n"
end

def lesson_5b
  # Output every element in two dimensional array using two methods.
  puts "Output every element in 2D array."
  array = []
  array << %w(1 2 3)
  array << %w(4 5 6)
  array << %w(7 8 9)
  puts "Using Flatten"
  print array.flatten
  puts "\n"
  puts "Using Join"
  print array.join
  puts "\n"
  puts "Using Nested Each"
  array.each {|sub| sub.each {|n| print n}}
  puts "\n"
end

def lesson_6a
  # array.each access each element of array
  # array.map modify each element of array
  # Input array of names and capitalizes each element (bonus: then make it reversed)
  puts "Capitalize and reverse array of names from user."
  puts "Enter names separated by spaces: "
  input = gets.chomp.strip
  input = "alpha bravo charlie delta" if input.empty? || input.nil?

  array = []
  array = input.split
  array.map! {|n| n.capitalize.reverse}
  print array.join(" ")
  puts "\n"
end

def lesson_6b
  # Print every word capitalized from user input sentence
  puts "Capitalize all words from user input in one line of code."
  puts "Enter names separated by spaces: "

  puts gets.chomp.strip.split.each {|n| n.capitalize}.join(" ")
  # puts gets.chomp.strip.split.map {|n| n.capitalize}.join(" ")
  puts "\n"
end

def lesson_7
  # Hashes
  hash = {}
  hash = {
    "Honda" => "Accord",
    "Toyota" => "Corolla",
    "Nissan" => "Sentra"
  }
  # This and above the same way to set key/value pairs in hashes
  # hash["Honda"] = "Accord"
  # hash["Toyota"] = "Corolla"
  # hash["Nissan"] = "Sentra"

  # hash {
  #   Honda: "Accord"
  #   Toyota: "Corolla"
  #   Nissan: "Sentra"
  # }

  # This will display nil because that key does not exist in the hash
  puts hash["BMW"]

  # Use below to created a default value when a non-existent key is accessed
  hash_with_default = Hash.new("NOT GIVEN")
  # This will display "NOT GIVEN"
  puts hash_with_default["BMW"]

  # Create array based on key
  puts hash.keys

  # Create array based on values
  puts hash.values
end

def lesson_8a
  # Write hash with three Canadian provinces as keys and
  # their capital as values. Then loop through it and print
  # each province and capital pair.
  hash = {}
  hash = {
    "British Columbia": "Victoria",
    Ontario: "Toronto",
    Manitoba: "Winnipeg"
  }

  hash.each {|k,v| puts "#{k}: #{v}"}
end

def lesson_8b
  hash = {}
  hash = {
    "British Columbia": %w(Victoria Vancouver),
    Ontario: %w(Toronto Brampton),
    Quebec: %w(Quebec Montreal)
  }

  hash.each {|k,v| puts "#{k}: #{v.sort.join(", ")}"}
end

def lesson_9a
  # Symbols are immutable
  # The same symbol assigned to multiple variables will all occupy
  # the same memory address (use .object_id method to check)
  hash = Hash.new("NA")
  print "Enter your name: "
  hash[:first_name] = gets.chomp.strip
  print "Enter your address: "
  hash[:address] = gets.chomp.strip
  puts hash
end

def lesson_9b
  hash = {}
  hash[:sony] = "Electronics"
  hash[:oasis] = "Juices"
  hash[:swingline] = "Staplers"

  puts hash
end

# lesson_1 # Array
# lesson_2 # String into array
# lesson_3 # FizzBuzz into array
# lesson_4a # Iterate through array
# lesson_4b # Iterate array and print all caps
# lesson_5a # Store input in array, iterate and print all caps
# lesson_5b # Output all elements in 2D array
# lesson_6a # Store input names in array and capitalize (then reverse)
# lesson_6b # Print user input in capitalize using one line of code
# lesson_7 # Hash and default values
# lesson_8a # Hash and print about Canada
# lesson_8b # Hash containing array about Canada to be printed
# lesson_9a # Symbols
# lesson_9b
