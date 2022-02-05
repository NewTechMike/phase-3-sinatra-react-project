#from class house

def self.house_list
    House.all.each do |house|
      puts house.name
    end 
  end 

  def self.id 
    House.all.each do |house|
      puts house.id
    end 
  end 

#from class student
  def self.name_list
    Student.all.each do |student|
      @student
      puts student.name
    end
  end 
  
  def self.even_id 
    Student.all.each do |student|
      if student.id.even? 
        puts student.name
      end 
    end 
  end 
