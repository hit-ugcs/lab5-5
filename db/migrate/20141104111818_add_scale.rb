class AddScale < ActiveRecord::Migration
  def up
  	add_column :students, :scale, :string
  end

  def down
  	remove_column :students, :scale
  end
end
