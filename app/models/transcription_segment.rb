class TranscriptionSegment < ActiveRecord::Base
  belongs_to :transcription
  belongs_to :candidate
end
