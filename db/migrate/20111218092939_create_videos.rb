class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string   :title
      t.text     :description
      t.string   :url, :null => false
      t.string   :video_id, :null => false
      t.datetime :published_at
      t.timestamps
    end
    
    add_index :videos, :video_id, :unique => true
    add_index :videos, :url, :unique => true
  end
end
