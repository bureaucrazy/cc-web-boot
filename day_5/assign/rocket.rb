require "faker"

# From stackoverflow adding color to strings.
class String
  def black;          "\033[30m#{self}\033[0m" end
  def red;            "\033[31m#{self}\033[0m" end
  def green;          "\033[32m#{self}\033[0m" end
  def brown;          "\033[33m#{self}\033[0m" end
  def blue;           "\033[34m#{self}\033[0m" end
  def magenta;        "\033[35m#{self}\033[0m" end
  def cyan;           "\033[36m#{self}\033[0m" end
  def gray;           "\033[37m#{self}\033[0m" end
  def bg_black;       "\033[40m#{self}\033[0m" end
  def bg_red;         "\033[41m#{self}\033[0m" end
  def bg_green;       "\033[42m#{self}\033[0m" end
  def bg_brown;       "\033[43m#{self}\033[0m" end
  def bg_blue;        "\033[44m#{self}\033[0m" end
  def bg_magenta;     "\033[45m#{self}\033[0m" end
  def bg_cyan;        "\033[46m#{self}\033[0m" end
  def bg_gray;        "\033[47m#{self}\033[0m" end
  def bold;           "\033[1m#{self}\033[22m" end
  def reverse_color;  "\033[7m#{self}\033[27m" end
  def no_colors
      self.gsub /\033\[\d+m/, ""
  end
end

name1 = Faker::Name.first_name
name2 = Faker::Name.first_name

def bloods(min, max)
  ' ' * rand(min..max)
end

def rocket(distance)
  print "#{' ' * distance}#{'=>'.gray.bold}"
end

x = rand(15..45)
1.upto(x) {|n|
  system 'clear'
  puts "\n"
  print "#{rocket n}#{' ' * (x - n)}#{(x - n) > 8 ? "<(^^.) Yo, #{name1}!" : '<(o.0)>' + 'Aaaaah!'.bold}"
  print "\n"
  print "#{rocket n}#{' ' * ((x/(n+1))+(n/x))}#{n > 5 ? '~(O.o)~' : '(^u^)/'} #{"Run#{'!' * (n/2)}".bold if n > 5}"
  sleep 0.99/n
}
40.times {|n|
  system 'clear'
  puts "\n"
  case n % 2
  when 0; print "#{' ' * x}<vv>"
  else; print "#{' ' * x}[^^]"
  end
  sleep 0.009
}
system 'clear'
puts "#{' ' * x}#{bloods(3, 10).green.bold.bg_red} [Dayuum #{name1}, we dead man.]"
puts "#{' ' * (x - rand(1..3))}#{'  (x.X)  '.green.bold.bg_red}  [Shut up #{name2}..]"
puts "#{' ' * (x - rand(1..5))}#{'    (x.X) '.green.bold.bg_red}"
puts "#{' ' * x}#{bloods(5, 10).green.bold.bg_red}"

puts "\n\n\nYour team has died. #{'Game over!'.red.bold}\n\n\n\n"
