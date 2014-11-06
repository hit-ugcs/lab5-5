class AddParametersToMailSender < ActiveRecord::Migration
  def change
    add_column :mail_senders, :email, :string
    add_column :mail_senders, :smtp_user, :string
    add_column :mail_senders, :smtp_password, :string
    add_column :mail_senders, :smtp_address, :string
    add_column :mail_senders, :smtp_port, :integer
  end
end
