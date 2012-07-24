require 'spec_helper'

describe "upvotes/show" do
  before(:each) do
    @upvote = assign(:upvote, stub_model(Upvote,
      :user => nil,
      :link => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
