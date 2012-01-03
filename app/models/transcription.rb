class Transcription < ActiveRecord::Base
  belongs_to :video_segment

  has_many :transcription_segments
  accepts_nested_attributes_for :transcription_segments


  def candidate
    video_segment.video.candidate
  end

end
