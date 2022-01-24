class CreateHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :houses do |t|
      t.string :house_name
      t.integer :student_count
      t.timestamps
    end 
  end
end
