class AddTurkeeTaskIdToVideoSegment < ActiveRecord::Migration
  def change
    add_column :video_segments, :turkee_task_id, :integer
  end
end
