require "sinatra"

enable :sessions

get "/" do
  erb :index, layout: :application
end

get "/fizzbuzz" do
  @num1 = session[:num1]
  @num2 = session[:num2]
  @word1 = session[:word1]
  @word2 = session[:word2]
  @first = session[:first]
  @last = session[:last]

  erb :fizzbuzz, layout: :application
end

post "/fizzbuzz" do
  session[:num1] = params[:num1]
  session[:num2] = params[:num2]
  session[:word1] = params[:word1]
  session[:word2] = params[:word2]
  session[:first] = params[:first]
  session[:last] = params[:last]

  @num1 = params[:num1].to_i
  @num2 = params[:num2].to_i
  @word1 = params[:word1]
  @word2 = params[:word2]
  @first = params[:first].to_i
  @last = params[:last].to_i

  @num1 = 3 if @num1 == 0
  @num2 = 5 if @num2 == 0
  @word1 = "fizz" if @word1.empty?
  @word2 = "buzz" if @word2.empty?
  @first = 1 if @first == 0
  @last = 100 if @last == 0
  @output = []

  for n in @first..@last
    if n % (@num1 * @num2) == 0
      @output << @word1 + @word2
    elsif n % (@num1) == 0
      @output << @word1
    elsif n % (@num2) == 0
      @output << @word2
    else
      @output << n
    end
  end

  # @output
  erb :fizzbuzz, layout: :application
end
