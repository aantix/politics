class AddCandidateIdToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :candidate_id, :integer
  end
end
