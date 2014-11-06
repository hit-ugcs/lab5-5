class Sender < ActiveRecord::Base
  attr_accessible :email, :smtp_user, :smtp_password, :smtp_address, :smtp_port, :id

end
