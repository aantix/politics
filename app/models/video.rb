class Video < ActiveRecord::Base
  has_many :video_segments
  belongs_to :candidate

  def self.youtube_video_id(url)
    query_string = url.split( '?', 2)[1]
    if query_string
      params = CGI.parse(query_string)
      return params["v"][0] if params.has_key?("v")
    end
  end
  
  def self.cache_latest
    puts "Caching latest videos..."
    candidates = Candidate.valid
    candidates.each do |candidate|
      puts " Searching for #{candidate.name}"
      search_all(candidate.name).tap{|videos| cache_search(videos, candidate)}
    end
  end
  
  private
  
  def self.cache_search(videos, candidate)
    videos.each do |video|
      next unless video["embeddable"]

      # Creation will fail if video_id isn't unique
      v = Video.create(:title        => video["title"],
                       :url          => video["video_id"],
                       :description  => video["content"],
                       :published_at => video["published"],
                       :duration     => video["duration"],
                       :candidate_id => candidate.id) rescue next

      VideoSegment.partition(v)
    end 
  end

  # Find all of the videos for a given candidate
  def self.search_all(candidate_name)
    YoutubeSearch.search(candidate_name, 'time' => 'all_time', 'orderby' => 'viewCount')
  end
end
