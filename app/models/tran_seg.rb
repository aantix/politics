# TranscriptionSegment
#  Shortened from TranscriptionSegment to TranSeg to get in under the Mechanical field input name limit.
class TranSeg < ActiveRecord::Base
  set_table_name "transcription_segments"

  belongs_to :tran
  belongs_to :candidate
end
