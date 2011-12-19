class CreateTranscriptions < ActiveRecord::Migration
  def change
    create_table :transcriptions do |t|
      t.integer :video_segment_id
      t.integer :category_id
      t.text :transcription
      t.integer :gold_num1
      t.integer :gold_num2
      t.integer :gold_sum

      t.timestamps
    end
  end
end
