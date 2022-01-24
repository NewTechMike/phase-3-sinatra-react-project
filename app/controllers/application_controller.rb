class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Welcome to the Home Page" }.to_json 
  end

  get "/houses" do 
    house = House.all
    house.to_json
  end
  
  get "/students" do 
    student = Student.all
    student.to_json
  end
end
