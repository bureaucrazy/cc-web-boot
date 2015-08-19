class MetaProgrammingTest

  [:a, :b, :c, :d].deach do |name|
    define_method(name) do
      puts "I'm the method #{name}"
    end
  end

  def method_missing(*args)
    puts "Method doesn't exist"
  end
end
