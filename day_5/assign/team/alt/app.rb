require "sinatra"
require "faker"
require "./team_randomizer"

enable :sessions

get "/" do
  erb :index, layout: :application
end

get "/team_randomizer" do
  erb :team_randomizer, layout: :application
end

post "/team_randomizer" do
  @teams = params[:teams].to_i
  @names = params[:names]
  @at_random = params[:at_random].to_i
  @roster = TeamRandomizer.new

  @roster.generate(@names, @teams, @at_random)
  @error_message = @roster.error_message
  session[:teams] = params[:teams]
  session[:names] = params[:names]
  session[:at_random] = params[:at_random]

  erb :team_randomizer, layout: :application
end

post "/team_randomizer_names" do
  max = 50
  rand(4..max).times do |count|
    @names = "#{Faker::Name.first_name} #{Faker::Name.last_name}#{',' unless count == max}#{@names}"
  end
  session[:names] = @names
  erb :team_randomizer, layout: :application
end
