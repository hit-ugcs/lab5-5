class AddEmailMobileAddresssToStudent < ActiveRecord::Migration
  def change
    add_column :students, :email, :string
    add_column :students, :mobile, :string
    add_column :students, :address, :string
  end
end
