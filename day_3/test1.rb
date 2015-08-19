# 1. Method naming follows the same conventions as variable naming:
# - snake case (all lower case + underscore in place spaces)
# - all lower case
# - can't start name with a number

# Multiply
def multiply(a, b)
  a * b
end

# Can use with or without parenthesis. No need to use () if no args needed.
puts multiply(4, 5)
puts multiply 5,6

# Pass a string
def greeting
  "Hello"
end
puts greeting

# Calling greeting above yields same result as below:
# greeting = "Hello"
# puts greeting

# Addition
def addition(a, b)
  a + b
end
puts addition 1, 2

# Default value
def addition(a, b = 1 )
  a + b
end
puts addition 5

# Method that takes a name and passes a greeting.
def greeting(name)
  "Hello #{name.capitalize!}."
end
puts greeting "codecore"

# By convention, use a (?) question mark on method name if returns true/false
def is_valid?
end

# By convention, use an (!) exclamation mark on method name if it does
# something destructive or dangerous.
def save!
end

# Returns true or false if passed parameter is divisible by 5
def by_five?(num)
  num % 5 == 0
end
puts by_five? 5

# Defining methods with variable args
# Using an (*) will make an array variable
def numbers(*num)
  print num
end

numbers
numbers(1,2,3)
numbers(1,2,3,4,5,6)
puts "\n"

# Iterate the array
def multiply2(a, *b)
  result = a
  b.each {|x| puts result *= x}
  result
end
multiply2 2,3,4

# Input array of numbers and outputs largest
def largest(*num)
  # n = 0
  # # num.sort.last
  # num.each {|x| n = x if x > n}
  # n
  num.max
end
puts largest 3,2,1,4,9,6

#
def first_value(hash = {})
  # hash.first returns an array of the first key-value pair [:a, 1]
  hash.first[1]
end

# should return 1
puts first_value({a:1, b:2})
# this is the same as the one above
# you're passing a single argument
puts first_value a:1, b:2


# Blocks
# def my_method
#   puts "Hello"
#   # this will execute the block given to the method
#   yield if block_given?
#   puts "Bye"
# end
#
# my_method do
#   puts ">>>>>>>>>>>>"
#   puts "CALLING BLOCK WITH DO/END"
#   puts ">>>>>>>>>>>>"
# end
#
# my_method {puts ">>>>>>>> CALLING WITH {}"}

# With hash args
def my_method(hash = {})
  puts "Hello #{hash[:name]}"
  # this will execute the block given to the method
  yield if block_given?
  puts "Bye"
end

my_method name: "Tam" do
  puts ">>>>>>>>>>>>"
  puts "CALLING BLOCK WITH DO/END"
  puts ">>>>>>>>>>>>"
end

my_method({name: "Tam"}) {puts ">>>>>>>> CALLING WITH {}"}

# Passing value to blocks
def greeting2
  puts ">>>>>> START"
  name = "Tam"
  yield(name)
  puts ">>>>>> END"
end

greeting2 do |name|
  puts "Hello #{name}"
end

greeting2 do |n|
  puts "Bye #{n}"
end


# Lambda
my_lambda1 = lambda {puts "I'm a lambda 1"}
my_lambda2 = lambda {puts "I'm a lambda 2"}
puts my_lambda1.call

def method_lambda(code1, code2)
  puts ">>>>>>>>> START"
  code1.call
  code2.call
  puts ">>>>>>>>> END"
end
method_lambda(my_lambda1, my_lambda2)

# Difference between Procs and Lambdas
# Proc treats argument as optional and will be nil if not provided
my_lam = lambda {|x| puts "#{x}"}
my_lam.call("Hello") # This will work
# my_lam.call          # Will throw exception

my_proc = proc {|x| puts "#{x}"}
my_proc.call("Hello") # Will work
my_proc.call          # Will work

# Lambdas accept having return inside them, procs don't


# Catching exceptions
begin
  10/0
  # This will catch any exception of any kind
  # it will also give an object e that contains the error msg and backtrace
rescue => e
  puts "Exception Class: #{e.class}"
  puts "Can't divide by Zero - original message: #{e.message}"
  puts "Exception Backtrace: #{e.backtrace}"
end

begin
  10/0
  # this will only catch an exception of type ZeroDivisionError
  # it will also give you an object e that contains the msg and backtrace
rescue ZeroDivisionError => e
  puts "Can't divide by Zero - original message: #{e.message}"
  # this will catch exceptions not caught by previous rescue statement
rescue => e
  puts "Unknown error happened: #{e.meesage}"
end


# Ternary operators
a = true
if a
  puts "Hello"
else
  puts "Hey"
end
# is equivalent to:
puts a ? "Hello" : "Hey"

# Conditional assignment
a = 5
# The ||= conditional assignment only assigns if not yet assigned
a ||= 1

# Checks if a variable can use a method passed to it. Returns true or false
a.respond_to?(:to_i)
