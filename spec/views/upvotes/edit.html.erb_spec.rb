require 'spec_helper'

describe "upvotes/edit" do
  before(:each) do
    @upvote = assign(:upvote, stub_model(Upvote,
      :user => nil,
      :link => nil
    ))
  end

  it "renders the edit upvote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => upvotes_path(@upvote), :method => "post" do
      assert_select "input#upvote_user", :name => "upvote[user]"
      assert_select "input#upvote_link", :name => "upvote[link]"
    end
  end
end
