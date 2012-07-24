require 'spec_helper'

describe "upvotes/new" do
  before(:each) do
    assign(:upvote, stub_model(Upvote,
      :user => nil,
      :link => nil
    ).as_new_record)
  end

  it "renders new upvote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => upvotes_path, :method => "post" do
      assert_select "input#upvote_user", :name => "upvote[user]"
      assert_select "input#upvote_link", :name => "upvote[link]"
    end
  end
end
