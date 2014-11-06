class AddParametersToMailsender < ActiveRecord::Migration
  def change
    add_column :mailsenders, :email, :string
    add_column :mailsenders, :smtp_user, :string
    add_column :mailsenders, :smtp_password, :string
    add_column :mailsenders, :smtp_address, :string
    add_column :mailsenders, :smtp_port, :integer
  end
end
