class CreateVideoSegments < ActiveRecord::Migration
  def change
    create_table :video_segments do |t|
      t.integer :video_id, :null => false
      t.integer :offset, :null => false
      t.integer :duration, :null => false
      t.integer :human_validation_id

      t.timestamps
    end
  end
end
