# You are given an array with numbers between 1 and 1,000,000.
# One integer is in the array twice. How can you determine which one?
# Can you think of a way to do it using little extra memory.
#
# Bonus: Solve it in two ways: one using hashes and one without.

# this will generate an array that have numbers 1 to 1000000
numbers = (1..1000000).to_a

# this will add a random element from the array back to itself
numbers << numbers.sample

# randomize order of numbers
numbers.shuffle!

# Solution 1 - using a hash
frequencies = Hash.new(0)

numbers.each do |number|
  if frequencies[number] == 0
    frequencies[number] += 1
  else
    puts "Method 1: #{number} is repeated"
    # this will stop the loop from continuing. Because we don't need to
    # continue looping once we've found the repeated integer.
    break
  end
end

# Solution 2 - iterate then count inside array
numbers.each do |number|
  if numbers.count(number) > 1
    puts "Method 2: #{number} is repeated"
    break
  end
end

# Solution 3 - recursive loop
numbers.each do |number|
  counter = 0
  numbers.each do |number2|
    counter += 1 if number == number2
    if counter > 1 then
      puts "Method 3: #{number} is repeated"
      # Exit nested loop
      break
    end
  end
  # Exit main loop
  break if counter > 1
end
