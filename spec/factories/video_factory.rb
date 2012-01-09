Factory.define :video do |s|
  s.title "Test Video"
  s.video_id "daa9pZDxfIY"
  s.description "Test Description"
  s.published_at "12-24-2011 12:00:00am"
end

Factory.define :video_60, :parent => :video do |s|
  s.video_id "daa9pZDxfIX"
  s.duration 60
end

Factory.define :video_95, :parent => :video do |s|
  s.video_id "daa9pZDxfIZ"
  s.duration 95
end
