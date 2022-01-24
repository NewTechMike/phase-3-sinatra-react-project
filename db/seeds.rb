puts "🌱 Seeding spices..."

# Seed your database here

gryff = House.create(
  house_name: "Gryffindor",
  student_count: 10
)
raven = House.create(
  house_name: "Ravenclaw",
  student_count: 10
)
huff = House.create(
  house_name: "Hufflepuff",
  student_count: 10
)
sly = House.create(
  house_name: "Slytherin",
  student_count: 10
)

2.times do 
  student = Student.create(
    name: Faker::Name.name,
    year_at_school: rand(1..7),
    house_id: gryff.id    
  )
end 

2.times do 
  student = Student.create(
    name: Faker::Name.name,
    year_at_school: rand(1..7),
    house_id: raven.id    
  )
end 

2.times do 
  student = Student.create(
    name: Faker::Name.name,
    year_at_school: rand(1..7),
    house_id: huff.id    
  )
end 

2.times do 
  student = Student.create(
    name: Faker::Name.name,
    year_at_school: rand(1..7),
    house_id: sly.id    
  )
end 

harry = Student.create(
  name: "Harry Potter",
  year_at_school: 7,
  house_id: 1
)

puts "✅ Done seeding!"
