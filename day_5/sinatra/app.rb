require "sinatra"
require "faker"

# Adding the Sinatra reloader will enable us to change code and see
# the effect of it right away without having to restart the server
# http://www.sinatrarb.com/contrib/reloader.html
# require "sinatra/reloader"

class String
  def title_case
    title = self.split
    title.map do |word|
      unless (word.include?("of")) || (word.include?("the")) && (title.first != "the")
        word.capitalize
      end
    end.join(" ")
  end
end

# this will enable to use sessions in Sinatra
enable :sessions

# Adds basic authentication to a page.
helpers do
  def protected!
    return if authorized?
    headers['WWW-Authenticate'] = 'Basic realm="Restricted Area"'
    halt 401, "Not authorized\n"
  end

  def authorized?
    @auth ||= Rack::Auth::Basic::Request.new(request.env)
    @auth.provided? and @auth.basic? and @auth.credentials and @auth.credentials == ['admin', 'admin']
  end
end

# When we receive a request that has a GET HTTP request
# with a URL of "/"
# Sinatra will execute the code in here:
get "/" do
  protected!
  session[:home_counter].nil? ? session[:home_counter] = 1 : session[:home_counter] += 1

  # the response is just a simple text that is sent back
  # "Hello World"

  # This will look for a template called index.erb inside the folder 'views'
  # it will use the template to generate HTML code and send it back as
  # a response to the client.
  erb(:index, {layout: :application})
end

# This is the contact 'action'
get "/contact" do
  erb :contact, layout: :application
end

post "/submit_contact" do
  session[:contact_counter] = 0 if session[:contact_counter].nil?
  session[:contact_counter] += 1

  # params is a Hash object that is given to us by Sinatra that contains
  # the key / value pairs from the parameters received from the client.
  # if it's a web form the key matches the "name" HTML attribute,
  # the value will be wathever the user enters in the input field.
  name = params[:full_name]
  "Thanks #{name} for contacting us."
end

get "/hello" do
  "Hey There!"
end

get "/convert_temp" do
  erb :convert_temp, layout: :application
end

post "/submit_convert_temp" do
  session[:convert_counter] = 0 if session[:convert_counter].nil?
  session[:convert_counter] += 1

  temperature_in_c = params[:temperature]
  @temperature_in_f = temperature_in_c.to_f * 9 / 5 + 32
  erb :convert_temp, layout: :application
end

get "/survey" do
  erb :survey, layout: :application

end

post "/survey" do
  session[:survey_counter] = 0 if session[:survey_counter].nil?
  session[:survey_counter] += 1

  # {"work-best"=>"without-deadlines", "consider-yourself"=>"rational",
  # "interested-in"=>"ideas"}

  # Params takes in the (name) parameter.
  work_best = params["work-best"]
  consider_yourself = params["consider-yourself"]
  interested_in = params["interested-in"]

  # With deadline | Rational | Ideas > Rational
  if work_best == "with-deadlines" && interested_in == "ideas" &&
    consider_yourself == "rational"
    @type = "Rational"
  else
    @type = "I don't know"
  end

  # params is a Hash given to us by Sinatra that contains the parsed values
  # submitted by the form.
  # "Thank you for submitting a survey. Your type is: #{type} - #{params.to_s}"

  erb :survey_results, layout: :application
end

get "/company" do
  erb :company, layout: :application
end

post "/company" do
  session[:faker_counter] = 0 if session[:faker_counter].nil?
  session[:faker_counter] += 1

  @gen = Faker::Company.catch_phrase
  erb :company, layout: :application
end

get "/winner" do
  erb :winner, layout: :application
end

post "/winner" do
  @names = params["names"]
  @winner = @names.split(",").sample.title_case
  session[:names] = @names
  session[:the_last_winner] = @winner

  erb :winner, layout: :application
end

post "/winner_random" do
  10.times do
    @names = "#{Faker::Name.first_name} #{Faker::Name.last_name}, #{@names}"
  end

  erb :winner, layout: :application
end

get "/fizzbuzz" do
  erb :fizzbuzz, layout: :application
end

post "/fizzbuzz" do
  session[:fizzbuzz_counter] = 0 if session[:fizzbuzz_counter].nil?
  session[:fizzbuzz_counter] += 1

  @num1 = params[:num1].to_i
  @num2 = params[:num2].to_i
  @word1 = params[:word1]
  @word2 = params[:word2]
  @first = params[:first_num].to_i
  @last = params[:last_num].to_i

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

get "/test_protected" do
  protected!
  "You're In!"
end

# This action will be invoked with anyurl that matches
# /color/WHATEVER. e.g /color/red or /color/blue or /color/something
get "/change_color/:c" do
  session[:color] = params[:c]
  redirect to ("/")
  # redirect back
end
