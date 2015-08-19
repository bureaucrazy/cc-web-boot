# Given a number N from the user. Generate an array that contains
# the first N numbers of the fibonacci sequence.
# note: In mathematics, the Fibonacci numbers or Fibonacci series or
# Fibonacci sequence are the numbers in the following integer sequence:
# 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, ...

def fibonacci (i_num)
  input = i_num.to_i - 1
  array = []

  for n in 0..input
    if n == 0 || n == 1
      array << 1
    else
      array << array[n-1] + array[n-2]
    end
  end

  print array
  puts "\n"
end

print "Enter sequence count for Fibonacci: "
fibonacci gets.chomp
