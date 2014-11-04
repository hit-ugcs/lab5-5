class AddStudentColumn < ActiveRecord::Migration
  def up
    add_column :students, :classdiscussion1, :integer
    add_column :students, :classdiscussion2, :integer
    add_column :students, :classdiscussion3, :integer
    add_column :students, :classdiscussion4, :integer
    add_column :students, :classdiscussion5, :integer
    add_column :students, :classdiscussion6, :integer
    add_column :students, :classdiscussion7, :integer
    add_column :students, :classdiscussion8, :integer
    add_column :students, :classdiscussion9, :integer
    add_column :students, :classdiscussion10, :integer
    add_column :students, :classdiscussion11, :integer
    
    add_column :students, :lab1, :integer
    add_column :students, :lab2, :integer
    add_column :students, :lab3, :integer
    add_column :students, :lab4, :integer
    add_column :students, :lab5, :integer
    add_column :students, :lab6, :integer
    add_column :students, :lab7, :integer   

    add_column :students, :project1, :integer
    add_column :students, :project2, :integer
    add_column :students, :project3, :integer
  end

  def down
  end
end
