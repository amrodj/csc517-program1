require "spec_helper"

describe DummyPostsController do
  describe "routing" do

    it "routes to #index" do
      get("/dummy_posts").should route_to("dummy_posts#index")
    end

    it "routes to #new" do
      get("/dummy_posts/new").should route_to("dummy_posts#new")
    end

    it "routes to #show" do
      get("/dummy_posts/1").should route_to("dummy_posts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/dummy_posts/1/edit").should route_to("dummy_posts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/dummy_posts").should route_to("dummy_posts#create")
    end

    it "routes to #update" do
      put("/dummy_posts/1").should route_to("dummy_posts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/dummy_posts/1").should route_to("dummy_posts#destroy", :id => "1")
    end

  end
end
