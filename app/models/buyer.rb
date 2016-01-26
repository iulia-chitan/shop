class Buyer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :name
  # attr_accessible :title, :body

  validates_presence_of :email, :name, :password
  validates_confirmation_of :password
end
