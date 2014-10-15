class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :student_id
      t.string :name
      t.string :nickname
      t.integer :project
      t.integer :final
      t.integer :lab
      t.integer :classdiscussion
      t.integer :total

      t.timestamps
    end
  end
end
