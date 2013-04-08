class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :token_authenticatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :firstname, :lastname
  # attr_accessible :title, :body

  validates_presence_of :firstname, :allow_blank => false
  validates_presence_of :lastname, :allow_blank => false

  def name
    "#{firstname} #{lastname}"    
  end
end
