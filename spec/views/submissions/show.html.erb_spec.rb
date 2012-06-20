require 'spec_helper'

describe "submissions/show" do
  before(:each) do
    @submission = assign(:submission, stub_model(Submission,
      :song_title => "Song Title",
      :artist => "Artist",
      :submitted_by_id => 1,
      :vid => "Vid",
      :video_service => "Video Service",
      :pros => "MyText",
      :cons => "MyText",
      :selection_session_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Song Title/)
    rendered.should match(/Artist/)
    rendered.should match(/1/)
    rendered.should match(/Vid/)
    rendered.should match(/Video Service/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/2/)
  end
end
