require 'spec_helper'

describe "likes/new" do
  before(:each) do
    assign(:like, stub_model(Like,
      :liker_id => 1,
      :submissions_id => 1
    ).as_new_record)
  end

  it "renders new like form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => likes_path, :method => "post" do
      assert_select "input#like_liker_id", :name => "like[liker_id]"
      assert_select "input#like_submissions_id", :name => "like[submissions_id]"
    end
  end
end
