# Write a code that print "what year was you can made in"? and then you should
# print "Future Car", "New Car", "Old Car", "Very Old Car", "Ancient Car"
# based on the year entered from the user. You can use dates of your choice to
# determine the state of the car.

print "Enter year of car: "
year = gets.to_i

output =  if year > 2015
            "Future"
          elsif year >= 2010
            "New"
          elsif year >= 2000
            "Old"
          else
            "Very Old"
          end
puts "#{output}"
