class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Welcome to the Home Page" }.to_json 
  end

  get "/houses" do 
    house = House.all
    house.to_json(only: [:house_name, :student_count])
  end

  get "/gryffindor" do 
    # Need all Students with a house_id of 21
    gryff = Student.all.select do |h_id|
      h_id.house_id == 21
    end
    gryff.to_json(only: [:name, :year_at_school])
  end 

  get "/ravenclaw" do 
    # Need all Students with a house_id of 21
    raven = Student.all.select do |h_id|
      h_id.house_id == 22
    end
    raven.to_json(only: [:name, :year_at_school])
  end 

  get "/hufflepuff" do 
    # Need all Students with a house_id of 21
    huff = Student.all.select do |h_id|
      h_id.house_id == 21
    end
    huff.to_json(only: [:name, :year_at_school])
  end 

  get "/slytherin" do 
    # Need all Students with a house_id of 21
    sly = Student.all.select do |h_id|
      h_id.house_id == 21
    end
    sly.to_json(only: [:name, :year_at_school])
  end 
  
  get "/students" do 
    student = Student.all
    student.to_json(only: [:name, :year_at_school])
  end
end
