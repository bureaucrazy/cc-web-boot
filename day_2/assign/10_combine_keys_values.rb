# Given a hash:
# {:a => "123", :b => "345", :c => "678", :d => "910"}
# Write a code that generates an array that combines the keys and values:
# so the resulting array should be:
# ["a123", "b345", "c678", "d910"]

def combine_keys_and_values(hash = {})
  exit if hash.empty?
  array = []
  hash.each {|k,v| array << "#{k}#{v}"}
  print hash
  puts "\n"
  print array
  puts "\n"
end

combine_keys_and_values a:123, b:345, c:678, d:910
