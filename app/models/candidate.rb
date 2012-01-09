require 'selectable'

class Candidate < ActiveRecord::Base
  include Selectable
  belongs_to :party

  scope :valid, :conditions => {:searchable => true}
  scope :non_candidates, :conditions => {:searchable => false}
  
  scope :republicans, :conditions => {:party_id => [Party::REPUBLICANS,Party::NA]}
  scope :democrats, :conditions => {:party_id => [Party::REPUBLICANS,Party::NA]}

end
