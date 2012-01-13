# Represents a transcription for a given video segment.
#  Shortened from Transcription to Tran to get in under the Mechanical field input name limit.
class Tran < ActiveRecord::Base
  set_table_name "transcriptions"

  belongs_to :video_segment

  has_many :tran_segs, :foreign_key => "transcription_id"
  accepts_nested_attributes_for :tran_segs

  def candidate
    video_segment.video.candidate
  end

end
