require "sinatra"

enable :sessions

get "/" do
  erb :index, layout: :application
end

get "/car_status" do
  @year = session[:year]
  erb :car_status, layout: :application
end

post "/car_status" do
  session[:year] = params[:year]
  @year = params[:year].to_i
  @output = case
  when @year > 2015 then "Future Car"
  when @year == 2015 then "New Car"
  when @year > 2000 then "Old Car"
  else "Very Old Car"
  end
  erb :car_status, layout: :application
end
