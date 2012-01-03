class VideoSegment < ActiveRecord::Base
  belongs_to :video
  belongs_to :candidate

  SEGMENT_LENGTH = 60   # seconds

  def self.partition(video)
    offset    = 0
    segments  = video.duration / SEGMENT_LENGTH
    remainder = video.duration % SEGMENT_LENGTH

    (1..segments).each do
      create_segment(video, offset, SEGMENT_LENGTH - 1)
      offset+=SEGMENT_LENGTH
    end

    create_segment(video, offset, remainder) unless remainder == 0
  end

  def start_of
    offset
  end

  def end_of
    (offset + duration)
  end

  def self.create_segment(video, offset, duration)
    video.video_segments.create(:offset => offset, :duration => duration)
  end
end
