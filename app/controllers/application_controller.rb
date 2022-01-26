class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Welcome to the Home Page" }.to_json 
  end

  # Looking to figure out how to increment student_count
  # when a new student is added
  # Also, how to I separate student_count by each House

  patch "/students/:id" do
    student = Student.find(params[:id])
    student.update(
      year_at_school: student.year_at_school + 1
    )
    if student.year_at_school == 8
      student.destroy
    end 
    student.to_json
  end 

  post '/students' do 
    # New students getting added and 'sorted' into their House
    student = Student.create( 
      name: params[:name],
      year_at_school: 1,
      house_id: rand(1..4)
    )
    student.to_json
  end

  delete "/students/:id" do 
    # Student graduates or leaves school
    student = Student.find(params[:id])
    student.destroy
    student.to_json
  end 

  get "/houses" do 
    # List of the current Hogwarts houses
    house = House.all
    house.to_json(only: [:house_name, :student_count, :id])
  end

  get "/gryffindor" do 
    # Lists Students from House Gryffinfor 
    gryff = Student.all.select do |h_id|
      h_id.house_id == 1
    end
    gryff.to_json(only: [:name, :year_at_school])
  end 

  get "/ravenclaw" do 
    # Lists Students from House Ravenclaw
    raven = Student.all.select do |h_id|
      h_id.house_id == 2
    end
    raven.to_json(only: [:name, :year_at_school])
  end 

  get "/hufflepuff" do 
    # Lists Students from House Hufflepuff 
    huff = Student.all.select do |h_id|
      h_id.house_id == 3
    end
    huff.to_json(only: [:name, :year_at_school])
  end 

  get "/slytherin" do 
    # Lists Students from House Slytherin 
    sly = Student.all.select do |h_id|
      h_id.house_id == 4
    end
    sly.to_json(only: [:name, :year_at_school])
  end 
  
  get "/students" do 
    # Lists Students currently attending Hogwarts
    student = Student.all
    student.to_json(only: [:name, :year_at_school, :house_id])
  end
end
