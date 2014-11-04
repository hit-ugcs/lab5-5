class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :student_id
      t.integer :score

      t.timestamps
    end
  end
end
