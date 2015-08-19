class TestAttrMethods
  attr_reader :a  # cannot be written outside
  attr_accessor :b
  attr_writer :c  # cannot be read outside

  def initialize(a, b = "Hello!", c = "Bonjour!")
    @a, @b, @c = a, b, c
  end

  def greetings
    puts "#{a} #{b} #{@c}"
  end
end
