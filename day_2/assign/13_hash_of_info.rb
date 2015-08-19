# Ask the user for personal information:
# first name, last name, city of birth and age.
# Then store that information in a hash.
# After that loop through the hash and display the results,
# for example:
#
# Your first name is Tam.
#
# Capitalize the inputs from the user if they are capitalizable

def hash_of_info (f_name = '', l_name = '', city = '', age = 0)
  hash = {
    "first name": f_name,
    "last name": l_name,
    "city of birth": city,
    "age": age
  }
  hash.each{|k,v|
    puts "Your #{k} is #{v.is_a?(String) ? v.capitalize : v}."
  }
end

print "Enter first name: "
fname = gets.chomp.strip
print "Enter last name: "
lname = gets.chomp.strip
print "Enter city of birth: "
city = gets.chomp.strip
print "Enter age: "
age = gets.to_i
puts "\n"
hash_of_info fname, lname, city, age
