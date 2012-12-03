class CreateSelectionSessions < ActiveRecord::Migration
  def change
    create_table :selection_sessions do |t|
      t.string :name, :null => false
      t.datetime :opened_on, :null => false
      t.datetime :closed_on
      t.integer :created_by_id
      t.timestamps
    end
  end
end
