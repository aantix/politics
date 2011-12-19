require 'candidate'

class Video < ActiveRecord::Base
  
  def self.cache_latest
    candidates = Candidate.scoped.all
    candidates.each do |candidate|
      search_all(candidate.name).tap{|videos| cache_search(videos)}
    end
  end
  
  private
  
  def self.cache_search(videos)
    videos.each do |video|
      Video.create(:title        => video.title,
                   :url          => video.video_id,
                   :description  => video.content,
                   :published_at => video.published,
                   :duration     => video.duration) rescue next
    end 
  end

  # Find all of the videos for a given candidate
  def self.search_all(candidate_name)
    YoutubeSearch.search(candidate_name, 'time' => 'all_time', 'orderby' => 'viewCount')
  end
end
