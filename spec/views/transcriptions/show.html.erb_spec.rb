require 'spec_helper'

describe "transcriptions/show.html.erb" do
  before(:each) do
    @transcription = assign(:transcription, stub_model(Transcription,
      :video_segment_id => 1,
      :category_id => 1,
      :transcription => "MyText",
      :gold_num1 => 1,
      :gold_num2 => 1,
      :gold_sum => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
