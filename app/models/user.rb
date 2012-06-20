class User < ActiveRecord::Base
  
  
  def is_admin?
    ["gm", "md"].include? self.role.downcase
  end
  
end
