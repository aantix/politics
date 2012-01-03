require 'spec_helper'

describe VideoSegment do
  describe "#partition" do

    it "should create two segments for a single video" do
      video = Factory.create(:video_95)

      lambda{
        VideoSegment.partition(video)
      }.should change(VideoSegment, :count).by(2)
    end

    it "should create only a single segment for a 60 second video" do
      video = Factory.create(:video_60)

      lambda{
        VideoSegment.partition(video)
      }.should change(VideoSegment, :count).by(1)
    end

  end
end
