require "./phones.rb"

cp1 = Phones.new "Nokia", "Communicator"
cp1.call "Mom"
cp1.call "Mom"
cp1.call "Dad"
cp1.end_call
cp1.call "Dad"
cp1.end_call
