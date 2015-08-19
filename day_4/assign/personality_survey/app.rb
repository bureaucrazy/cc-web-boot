require "sinatra"

get "/" do
  erb :index, layout: :application
end

get "/survey" do
  erb :survey, layout: :application
end

post "/survey" do
  @combinations = {}
  @combinations["Rational1"] = ["with-deadlines", "rational", "ideas"]
  @combinations["Rational2"] = ["without-deadlines", "rational", "ideas"]
  @combinations["Guardian1"] = ["with-deadlines", "rational", "facts"]
  @combinations["Guardian2"] = ["with-deadlines", "compassionate", "facts"]
  @combinations["Artisan1"]  = ["without-deadlines", "rational", "facts"]
  @combinations["Artisan2"]  = ["without-deadlines", "compassionate", "facts"]
  @combinations["Idealist1"] = ["with-deadlines", "compassionate", "ideas"]
  @combinations["Idealist2"] = ["without-deadlines", "compassionate", "ideas"]

  @work_best = params["work-best"]
  @consider_yourself = params["consider-yourself"]
  @interested_in = params["interested-in"]
  @survey_array = [@work_best, @consider_yourself, @interested_in]

  @name = params["name"]
  @email = params["email"]

  @combinations.each { |key,value| @output = key if @survey_array == value }

  @image = case @output
  when "Rational1", "Rational2"; "rational"
  when "Guardian1", "Guardian2"; "guardian"
  when "Artisan1", "Artisan2"; "artisan"
  when "Idealist1", "Idealist2"; "idealist"
  end
  
  erb :results, layout: :application
end
