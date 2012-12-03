require 'spec_helper'

describe "selection_sessions/show" do
  before(:each) do
    @selection_session = assign(:selection_session, stub_model(SelectionSession))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
