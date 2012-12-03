class AddVidLinkToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :video_link, :string, :null => false
  end
end
