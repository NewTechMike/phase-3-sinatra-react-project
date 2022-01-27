class Student < ActiveRecord::Base
  belongs_to :house

  def self.name_list
    Student.all.each do |student|
      puts student.name
    end
  end 

end