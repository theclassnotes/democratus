class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :liker_id, :null => false
      t.integer :submission_id, :null => false

      t.timestamps
    end
    add_index :likes, [:liker_id, :submission_id], :unique => true
  end
end
