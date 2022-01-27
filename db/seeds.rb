puts "🌱 Seeding spices..."

# Seed your database here

gryff = House.create(
  name: "Gryffindor",
  student_count: gryff.student.count
)
raven = House.create(
  name: "Ravenclaw",
  student_count: raven.student.count
)
huff = House.create(
  name: "Hufflepuff",
  student_count: huff.students.count
)
sly = House.create(
  name: "Slytherin",
  student_count: sly.student.count
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
