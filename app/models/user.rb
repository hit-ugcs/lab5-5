class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  validates_presence_of :email,  :message => "Email不能为空!"
  validates_uniqueness_of :email, :case_sensitive => false, :message => "该Email已存在!"
  validates_presence_of     :password,  :message =>"密码不能为空!"   
	validates_length_of         :password,   :minimum => 6,:message=>"密码长度须为6到20位字母或数字! "      
	validates_presence_of     :password_confirmation,  :message =>"请再输入一次密码!"  
	validates_confirmation_of :password,  :message => "两次密码不一致!"
end
