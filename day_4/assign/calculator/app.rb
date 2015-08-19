require "sinatra"

enable :sessions

get "/" do
  erb :index, layout: :application
end

get "/calculator" do
  @num1 = session[:num1]
  @num2 = session[:num2]
  erb :calculator, layout: :application
end

post "/calculated" do
  session[:num1] = params[:num1]
  session[:num2] = params[:num2]
  @num1 = params[:num1].to_f
  @num2 = params[:num2].to_f
  @operator = params[:operator]

  if @num2 == 0.0 && @operator == "/"
    @result = "Dividend cannot be 0."
  else
    @result = case @operator
    when "+"; @num1 + @num2
    when "-"; @num1 - @num2
    when "*"; @num1 * @num2
    when "/"; @num1 / @num2
    end
  end
  erb :calculator, layout: :application
end
