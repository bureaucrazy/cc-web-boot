require "./cat.rb"
require "./bird.rb"

names = %w(Armandina Eda Candie Heike Ronald Elissa Bernita Kristan Ma Lucius)
names << %w(Yulanda Bell Doreatha Santos Destiny Elwood Irmgard Benita Roseline)
names << %w(Jamar Leila Sebastian Emery Chang Shenita Krissy Robena Kathline)
names << %w(Chantel Charmaine Dolly Kourtney Cassey Ike Catrice Lela Tova Janine)
names << %w(Heidi Kerstin Giuseppina Ayana Keeley Katrina Chia Lorrine Lindy)
names << %w(Kamala Randell Shavon Tom Tam Mike Steve Drew Frank Bryan Ryan)
names.flatten!
speed = (1..100).to_a

10.times {
  c = Cat.new(names.sample, speed.sample)
  b = Bird.new(names.sample, speed.sample)
  c.catch(b)
}
