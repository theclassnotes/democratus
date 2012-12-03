class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :token_authenticatable, :confirmable, :lockable, 
         :timeoutable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :role, :is_active, :password, :password_confirmation
  validates_presence_of :name, :email, :password
  
  def is_admin?
    ["md", "gm"].include? self.role.downcase
  end
  
  def role=(new_role)
    @role = new_role
  end
  
end
