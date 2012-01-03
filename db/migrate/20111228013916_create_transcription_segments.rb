class CreateTranscriptionSegments < ActiveRecord::Migration
  def change
    create_table :transcription_segments do |t|
      t.integer :transcription_id
      t.integer :candidate_id
      t.text :transcription

      t.timestamps
    end
  end
end
