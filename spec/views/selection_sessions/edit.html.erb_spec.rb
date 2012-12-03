require 'spec_helper'

describe "selection_sessions/edit" do
  before(:each) do
    @selection_session = assign(:selection_session, stub_model(SelectionSession))
  end

  it "renders the edit selection_session form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => selection_sessions_path(@selection_session), :method => "post" do
    end
  end
end
