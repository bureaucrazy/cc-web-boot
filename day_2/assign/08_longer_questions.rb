# Given an array of questions like this:
# questions = ["What is your name", "How are you?", "Is that right?",
#   "Are you John?", "How is everything?"]
# and returns an array of questions whose total character count is greater than 15.
# Bonus: Do it in two ways, one of them using select method for Ruby Arrays.

def question_length_method1(num)
  questions = []
  questions << "What is your name?"
  questions << "How are you?"
  questions << "Is that right?"
  questions << "Are you John?"
  questions << "How is everything?"

  print questions.select {|n| n.length > num}
end

def question_length_method2(num)
  questions = []
  questions << "What is your name?"
  questions << "How are you?"
  questions << "Is that right?"
  questions << "Are you John?"
  questions << "How is everything?"

  print questions.map {|q| q if q.length > num}.compact
end

puts "Using .select:"
question_length_method1 15
puts "\n"
puts "Using .map:"
question_length_method2 15
puts "\n"
