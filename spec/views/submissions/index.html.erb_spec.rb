require 'spec_helper'

describe "submissions/index" do
  before(:each) do
    assign(:submissions, [
      stub_model(Submission,
        :song_title => "Song Title",
        :artist => "Artist",
        :submitted_by_id => 1,
        :vid => "Vid",
        :video_service => "Video Service",
        :pros => "MyText",
        :cons => "MyText",
        :selection_session_id => 2
      ),
      stub_model(Submission,
        :song_title => "Song Title",
        :artist => "Artist",
        :submitted_by_id => 1,
        :vid => "Vid",
        :video_service => "Video Service",
        :pros => "MyText",
        :cons => "MyText",
        :selection_session_id => 2
      )
    ])
  end

  it "renders a list of submissions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Song Title".to_s, :count => 2
    assert_select "tr>td", :text => "Artist".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Vid".to_s, :count => 2
    assert_select "tr>td", :text => "Video Service".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
