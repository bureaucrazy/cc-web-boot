# Create an Exception class called AwesomeException and make it inherit
# from StandardError
#
# Raise an exception with the type you've created and rescue from it.

require "./awesome_exception.rb"

n = AwesomeException.new

sample1 = "a"
sample2 = 2
n.addition sample1, sample2
