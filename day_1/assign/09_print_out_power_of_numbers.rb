# Write code that takes a number and then prints the power of three of that
# number if it's divisible by three and it prints the power of two if it's
# divisible by 2 and prints the number itself otherwise.

print "Enter a number: "
input = gets.to_i
flag = 0

if input != 0
    if input % 3 == 0
      flag = 1
      puts input ** 3
    end

    if input % 2 == 0
      flag = 1
      puts input ** 2
    end
end
puts input if flag == 0
