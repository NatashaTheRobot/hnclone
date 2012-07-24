require "spec_helper"

describe UpvotesController do
  describe "routing" do

    it "routes to #index" do
      get("/upvotes").should route_to("upvotes#index")
    end

    it "routes to #new" do
      get("/upvotes/new").should route_to("upvotes#new")
    end

    it "routes to #show" do
      get("/upvotes/1").should route_to("upvotes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/upvotes/1/edit").should route_to("upvotes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/upvotes").should route_to("upvotes#create")
    end

    it "routes to #update" do
      put("/upvotes/1").should route_to("upvotes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/upvotes/1").should route_to("upvotes#destroy", :id => "1")
    end

  end
end
