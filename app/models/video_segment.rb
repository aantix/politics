class VideoSegment < ActiveRecord::Base
  belongs_to :video
  belongs_to :candidate
  
  scope :unprocessed, :conditions => 'turkee_task_id is NULL'

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

  def self.reset_turk_tasks
    VideoSegment.update_all(:turkee_task_id => nil)
  end

  def self.create_turk_tasks(title,description,num_assignments,reward,duration)
    hit_urls = []
    VideoSegment.unprocessed.each do |video_segment|
      turk_task = Turkee::TurkeeTask.create_hit(HOST, title, description, :Tran,
                                                num_assignments, reward, duration, 70, :video_segment_id => video_segment.id)

      hit_urls  << turk_task.hit_url
      
      video_segment.turkee_task_id = turk_task.id
      video_segment.save
    end
    
    puts "HIT URLs :"
    puts hit_urls.join("\n")
  end
end
