class Like < ActiveRecord::Base
  attr_accessible :liker_id, :submissions_id
end
