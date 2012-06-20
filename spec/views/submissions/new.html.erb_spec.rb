require 'spec_helper'

describe "submissions/new" do
  before(:each) do
    assign(:submission, stub_model(Submission,
      :song_title => "MyString",
      :artist => "MyString",
      :submitted_by_id => 1,
      :vid => "MyString",
      :video_service => "MyString",
      :pros => "MyText",
      :cons => "MyText",
      :selection_session_id => 1
    ).as_new_record)
  end

  it "renders new submission form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => submissions_path, :method => "post" do
      assert_select "input#submission_song_title", :name => "submission[song_title]"
      assert_select "input#submission_artist", :name => "submission[artist]"
      assert_select "input#submission_submitted_by_id", :name => "submission[submitted_by_id]"
      assert_select "input#submission_vid", :name => "submission[vid]"
      assert_select "input#submission_video_service", :name => "submission[video_service]"
      assert_select "textarea#submission_pros", :name => "submission[pros]"
      assert_select "textarea#submission_cons", :name => "submission[cons]"
      assert_select "input#submission_selection_session_id", :name => "submission[selection_session_id]"
    end
  end
end
