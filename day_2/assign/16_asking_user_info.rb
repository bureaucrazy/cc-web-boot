# Ask the user for the following information: first name, last name and age
#
# Then ask them for cities they've visited (they can keep entering
# until they type "done").
#
# Store all the entered data in a hash and then loop through the hash
# and display results

def hash_of_info (f_name = '', l_name = '', age = 0, *city)
  hash = {
    "first name": f_name,
    "last name": l_name,
    "age": age,
    "cities visited": city
  }
  hash.each{|k,v|
    print "Your #{k} is "
    if v.is_a?(String)
      print v.capitalize
    else
      if v.kind_of?(Array)
        print v.join(", ")
      else
        print v
      end
    end
    puts "."
  }
end

print "Enter first name: "
fname = gets.chomp.strip
print "Enter last name: "
lname = gets.chomp.strip
print "Enter age: "
age = gets.to_i

# main array for city
city = []
# temp array for capitalizing multi-name cities
citycaps = []
# temp var for pre-processing city name
input = ''

puts "Enter cities visited (type done with finished): "
until input == "done"
  input = gets.chomp.strip
  # Prevent pollution with blanks
  unless input.empty? || input.nil?
    # Used to capitalize multi-name cities
    citycaps = input.split
    citycaps.map! {|n| n.capitalize}
    # Push into city array after processing, except escape word
    city << citycaps.join(" ") unless input == "done"
  end
end

puts "-------------------------"
hash_of_info fname, lname, age, city
