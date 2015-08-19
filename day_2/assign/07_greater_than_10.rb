# Write a code that takes an array and then returns another array that
# contains all the numbers that are greater than 10. The code should not
# fail if the array contains strings / non-number elements.
# for example, this array:
#
# my_array = [1,4,5,23,14,"Hello there", false, nil]
# Should return:
#
# [23,14]

def greater_than_ten (a_input)
  exit if a_input.empty? || a_input.nil?
  array = a_input
  array2 = []

  print array
  for n in 0..array.count - 1
    if array[n].is_a? Integer
      array2 << array[n] if array[n] > 10
    end
  end

  print array2
  puts "\n"
end

greater_than_ten [1, 4, 5, 23, 14, "Hello there", false, nil]
