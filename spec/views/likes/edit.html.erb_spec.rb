require 'spec_helper'

describe "likes/edit" do
  before(:each) do
    @like = assign(:like, stub_model(Like,
      :liker_id => 1,
      :submissions_id => 1
    ))
  end

  it "renders the edit like form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => likes_path(@like), :method => "post" do
      assert_select "input#like_liker_id", :name => "like[liker_id]"
      assert_select "input#like_submissions_id", :name => "like[submissions_id]"
    end
  end
end
