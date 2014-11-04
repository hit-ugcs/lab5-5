class CreateLabs < ActiveRecord::Migration
  def change
    create_table :labs do |t|
      t.integer :student_id
      t.integer :score

      t.timestamps
    end
  end
end
