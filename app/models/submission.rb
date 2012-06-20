class Submission < ActiveRecord::Base
  attr_accessible :artist, :cons, :pros, :selection_session_id, :song_title, :submitted_by_id, :vid, :video_service
  
  #belongs_to :selection_session, :user
  #has_many :likes, :comments
  #has_one :md_comment, :class => MDComment
end
