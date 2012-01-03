class CreateTranscriptions < ActiveRecord::Migration
  def change
    create_table :transcriptions do |t|
      t.integer :video_segment_id
      t.integer :category_id
      t.integer :gold_sum

      t.timestamps
    end
  end
end
