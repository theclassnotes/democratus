require 'spec_helper'

describe "selection_sessions/new" do
  before(:each) do
    assign(:selection_session, stub_model(SelectionSession).as_new_record)
  end

  it "renders new selection_session form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => selection_sessions_path, :method => "post" do
    end
  end
end
