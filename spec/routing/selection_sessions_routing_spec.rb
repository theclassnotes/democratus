require "spec_helper"

describe SelectionSessionsController do
  describe "routing" do

    it "routes to #index" do
      get("/selection_sessions").should route_to("selection_sessions#index")
    end

    it "routes to #new" do
      get("/selection_sessions/new").should route_to("selection_sessions#new")
    end

    it "routes to #show" do
      get("/selection_sessions/1").should route_to("selection_sessions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/selection_sessions/1/edit").should route_to("selection_sessions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/selection_sessions").should route_to("selection_sessions#create")
    end

    it "routes to #update" do
      put("/selection_sessions/1").should route_to("selection_sessions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/selection_sessions/1").should route_to("selection_sessions#destroy", :id => "1")
    end

  end
end
