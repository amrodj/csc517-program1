require "spec_helper"

describe DummyUsersController do
  describe "routing" do

    it "routes to #index" do
      get("/dummy_users").should route_to("dummy_users#index")
    end

    it "routes to #new" do
      get("/dummy_users/new").should route_to("dummy_users#new")
    end

    it "routes to #show" do
      get("/dummy_users/1").should route_to("dummy_users#show", :id => "1")
    end

    it "routes to #edit" do
      get("/dummy_users/1/edit").should route_to("dummy_users#edit", :id => "1")
    end

    it "routes to #create" do
      post("/dummy_users").should route_to("dummy_users#create")
    end

    it "routes to #update" do
      put("/dummy_users/1").should route_to("dummy_users#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/dummy_users/1").should route_to("dummy_users#destroy", :id => "1")
    end

  end
end
