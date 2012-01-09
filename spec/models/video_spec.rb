require 'spec_helper'

describe Video do

  describe "#cache_recent" do
    before(:each) do
      @search_results = [{
        "title"      => "Killer Whale Imitates Boat Motor",
        "published"  => "2011-09-29T15:30:43.000Z",
        "id"         => "http://gdata.youtube.com/feeds/api/videos/0b2U5r7Jwkc",
        "video_id"   => "0b2U5r7Jwkc",
        "content"    => "Top YouTube Videos on ...",
        "updated"    => "2011-10-13T20:20:54.000Z",
        "duration"   => "90",
        "embeddable" => true
      }]

      YoutubeSearch.stub!(:search).and_return @search_results
      Factory.create(:candidate)
    end

    it "should do a YoutubeSearch for each candidate" do
      YoutubeSearch.should_receive(:search)
      Video.cache_latest
    end
    
    it "should call VideoSegment#partition" do
      VideoSegment.should_receive(:partition).once
      Video.cache_latest
    end
    
    describe "#youtube_video_id" do
      
      it "should extract a youtube video id from the url" do
        Video.youtube_video_id("http://www.youtube.com/watch?v=daa9pZDxfIY&feature=g-all-pls").should == "daa9pZDxfIY"
      end

      it "should not extract a youtube video id from the url" do
        Video.youtube_video_id("http://www.youtube.com/watch?v2=daa9pZDxfIY&feature=g-all-pls").should be_nil
      end

    end

  end
end
