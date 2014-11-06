class AddParametersToSender < ActiveRecord::Migration
  def change
    add_column :senders, :email, :string
    add_column :senders, :smtp_user, :string
    add_column :senders, :smtp_password, :string
    add_column :senders, :smtp_address, :string
    add_column :senders, :smtp_port, :integer
  end
end
