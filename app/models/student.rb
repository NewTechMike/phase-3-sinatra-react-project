class Student < ActiveRecord::Base
  belongs_to :house

  def self.name_list
    Student.all.each do |student|
      student.name
    end
  end 

  def self.students_of_house
    puts self.students
  end
end