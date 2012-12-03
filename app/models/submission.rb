class Submission < ActiveRecord::Base
  
  attr_accessible :artist, :cons, :pros, :selection_session_id, :song_title, :submitted_by_id, :vid, :video_service
  
  validates_presence_of :artist, :cons, :pros, :selection_session_id, :song_title, :submitted_by_id, :video_link
  validates_format_of :video_link, :with => %r/https?:\/\/[\S]+/, :on => :create
  
  belongs_to :selection_session
  belongs_to :submitted_by, :class_name => "User"
  #has_many :likes, :comments
  #has_one :md_comment, :class => MDComment
  
  before_validation :add_selection_session, :parse_video_link
  
  private
  
    def add_selection_session
      self.selection_session_id = SelectionSession.current_selection_session.id
    end
    
    def parse_video_link
      self.video_link.strip!
      
      if self.video_link[/^.*((v\/)|(embed\/)|(watch\?))\??v?=?([^\&\?]*).*/] or self.video_link[/youtu\.be\/([^\?]*)/]
        self.video_service = "youtube"
        if self.video_link[/youtu\.be\/([^\?]*)/]
          self.vid = $1
        else
          self.video_link[/^.*((v\/)|(embed\/)|(watch\?))\??v?=?([^\&\?]*).*/]
          self.vid = $5
        end
      elsif self.video_link[/(www\.)?vimeo\.com\/(\d+)/]
        self.vid = $2
        self.video_service = "vimeo"
      end
    end
  
end
