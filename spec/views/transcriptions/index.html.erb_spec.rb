require 'spec_helper'

describe "transcriptions/index.html.erb" do
  before(:each) do
    assign(:transcriptions, [
      stub_model(Transcription,
        :video_segment_id => 1,
        :category_id => 1,
        :transcription => "MyText",
        :gold_num1 => 1,
        :gold_num2 => 1,
        :gold_sum => 1
      ),
      stub_model(Transcription,
        :video_segment_id => 1,
        :category_id => 1,
        :transcription => "MyText",
        :gold_num1 => 1,
        :gold_num2 => 1,
        :gold_sum => 1
      )
    ])
  end

  it "renders a list of transcriptions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
