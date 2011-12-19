class CreateVideoSegments < ActiveRecord::Migration
  def change
    create_table :video_segments do |t|
      t.integer :video_id
      t.integer :offset
      t.integer :duration

      t.timestamps
    end
  end
end
