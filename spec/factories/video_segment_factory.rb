Factory.define :video_segment do |s|
  s.association :video, :factory => :video
  s.association :candidate, :factory => :candidate
  s.offset 0
  s.duration 60
end
