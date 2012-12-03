class SelectionSession < ActiveRecord::Base
  attr_accessible :id, :name, :opened_on, :closed_on
  
  def self.current_selection_session
    SelectionSession.where(:closed_on => nil).order('created_at DESC').first
  end
  def self.current # how to alia
    self.current_selection_session
  end
  
end
