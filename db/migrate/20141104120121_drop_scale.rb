class DropScale < ActiveRecord::Migration
  def up
  	remove_column :students, :scale, :string
  end

  def down
  	add_column :students, :scale
  end
end
