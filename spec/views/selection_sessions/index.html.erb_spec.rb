require 'spec_helper'

describe "selection_sessions/index" do
  before(:each) do
    assign(:selection_sessions, [
      stub_model(SelectionSession),
      stub_model(SelectionSession)
    ])
  end

  it "renders a list of selection_sessions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
