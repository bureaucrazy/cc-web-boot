require "sinatra"
require "data_mapper"

# Create the database.
DataMapper.setup(:default, "sqlite://#{Dir.pwd}/data.db")

use Rack::MethodOverride

enable :sessions

# Create table to store ratings.
class Questions
  include DataMapper::Resource
  property :id, Serial
  property :title, String
  property :description, String
  property :view_count, Integer
end

Rate.auto_upgrade!

get "/" do
  erb :index, layout: :application
end

get "/popular" do
  erb :popular, layout: :application
end

get "/results" do
  @scores = Rate.all
  @hiscore = Rate.all(:overall.gte => 3)
  @loscore = Rate.all(:overall.lt => 3)
  erb :results, layout: :application
end

post "/rate" do
  Rate.create({name: params[:name],
                  email: params[:email],
                  design: params[:design],
                  content: params[:content],
                  speed: params[:speed],
                  overall: params[:overall]})

  "Thank you #{params[:name]} for the rating. An email has been sent to #{params[:email]}."
end
