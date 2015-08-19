class FizzBuzz
  attr_accessor :first_number
  attr_accessor :second_number
  attr_accessor :word1
  attr_accessor :word2
  attr_accessor :begin_number
  attr_accessor :end_number
  attr_reader :array

  def initialize(first_number, second_number,
    word1 = "fizz", word2 = "buzz",
    begin_number = 1, end_number = 100)
    @first_number, @second_number = first_number, second_number
    @word1, @word2 = word1, word2
    @begin_number, @end_number = begin_number, end_number
    @array = []
  end

  def run
    # Calls to process using begin and end numbers
    process begin_number, end_number
    puts "#{array}"
  end

  private

  # Process series can only be called within via .run
  # Has two params begin and end of series
  def process(start, finish)
    # Clean up
    array.clear

    # Iterate
    start.upto(finish) do |n|
      if n % (first_number * second_number) == 0
        array << word1 + word2
      elsif n % first_number == 0
        array << word1
      elsif n % second_number == 0
        array << word2
      else
        array << n
      end
    end
  end
end
