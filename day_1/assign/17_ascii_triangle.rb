# Write a method that takes a number N and then
# draw a triangle that has N number of letter O on each of its sides.
# For example given the number 5 your will get something like:
#     O
#    O O
#   O O O
#  O O O O
# O O O O O

def make_triangle(n)
  n + 1
  n.times {|x| puts "#{' ' * (4-x)} #{"O " * x}"}
end

print "Enter the size of the triangle: "
make_triangle gets.to_i
