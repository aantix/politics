require 'spec_helper'

describe "transcriptions/new.html.erb" do
  before(:each) do
    assign(:transcription, stub_model(Transcription,
      :video_segment_id => 1,
      :category_id => 1,
      :transcription => "MyText",
      :gold_num1 => 1,
      :gold_num2 => 1,
      :gold_sum => 1
    ).as_new_record)
  end

  it "renders new transcription form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => transcriptions_path, :method => "post" do
      assert_select "input#transcription_video_segment_id", :name => "transcription[video_segment_id]"
      assert_select "input#transcription_category_id", :name => "transcription[category_id]"
      assert_select "textarea#transcription_transcription", :name => "transcription[transcription]"
      assert_select "input#transcription_gold_num1", :name => "transcription[gold_num1]"
      assert_select "input#transcription_gold_num2", :name => "transcription[gold_num2]"
      assert_select "input#transcription_gold_sum", :name => "transcription[gold_sum]"
    end
  end
end
