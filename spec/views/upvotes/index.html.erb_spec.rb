require 'spec_helper'

describe "upvotes/index" do
  before(:each) do
    assign(:upvotes, [
      stub_model(Upvote,
        :user => nil,
        :link => nil
      ),
      stub_model(Upvote,
        :user => nil,
        :link => nil
      )
    ])
  end

  it "renders a list of upvotes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
