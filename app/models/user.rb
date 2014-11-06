class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  validates_presence_of :email,  :message => "Email must not be empty!"
  validates_uniqueness_of :email, :case_sensitive => false, :message => "Email already exists!"
  validates_presence_of     :password,  :message =>"Password  must not be empty!!"   
	validates_length_of         :password,   :minimum => 6,:message=>"Length of password must be >=6 and <= 20"      
	validates_presence_of     :password_confirmation,  :message =>"Please confirm your password!"  
	validates_confirmation_of :password,  :message => "Please confirm two entries are the same!"

end
