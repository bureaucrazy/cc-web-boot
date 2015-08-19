require "sinatra"
# require "sinatra/reloader" if development?
require 'active_support/all'

enable :sessions


get "/" do
  erb :index, layout: :application
end

get "/team_randomizer" do
  erb :team_randomizer, layout: :application
end

post "/team_randomizer" do
  session[:names] = params[:names]
  session[:number_of_teams] = params[:number_of_teams]
  @names      = params[:names]
  @num        = params[:number_of_teams].to_i
  @arry_names = @names.split(",").shuffle

  if @num < 1
    return "Error in team number violation."
  elsif @num > @arry_names.count
    return "Unable to handle teams more than names."
  elsif @names.gsub(',','').strip == ''
    return "Names is critical."
  end

  @splitting = @arry_names.in_groups(@num, false).to_a

  erb :team_randomizer, layout: :application
end
