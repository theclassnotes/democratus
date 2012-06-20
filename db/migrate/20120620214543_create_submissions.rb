class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string :song_title, :null => false
      t.string :artist, :null => false
      t.integer :submitted_by_id, :null => false
      t.string :vid
      t.string :video_service
      t.text :pros, :null => false
      t.text :cons, :null => false
      t.integer :selection_session_id, :null => false

      t.timestamps
    end
  end
end
