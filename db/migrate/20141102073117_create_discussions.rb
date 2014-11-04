class CreateDiscussions < ActiveRecord::Migration
  def change
    create_table :discussions do |t|
      t.integer :student_id
      t.integer :score

      t.timestamps
    end
  end
end
