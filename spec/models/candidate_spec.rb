require 'spec_helper'

describe Candidate do
  
  before(:all) do
    @candidate = Factory.create(:candidate)
  end

  it "should return an array for selectable items" do
    Candidate.select_items.should == [[@candidate.name, @candidate.id]]
  end
end
