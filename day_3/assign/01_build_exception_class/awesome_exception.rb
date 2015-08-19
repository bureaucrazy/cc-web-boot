# Create an Exception class called AwesomeException and make it inherit
# from StandardError
#
# Raise an exception with the type you've created and rescue from it.

class AwesomeException < StandardError
  def addition(input1, input2)
    puts input1 + input2

  rescue TypeError => e
    puts "Warning: Input cannot be non-numeric!"
  rescue => e
    puts "Exception Class: #{e.class}"
    # puts "Can't divide by Zero - original message: #{e.message}"
    # puts "Exception Backtrace: #{e.backtrace}"
  end
end
