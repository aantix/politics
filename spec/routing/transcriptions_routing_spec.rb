require "spec_helper"

describe TransController do
  describe "routing" do

    it "routes to #index" do
      get("/trans").should route_to("trans#index")
    end

    it "routes to #new" do
      get("/trans/new").should route_to("trans#new")
    end

    it "routes to #show" do
      get("/trans/1").should route_to("trans#show", :id => "1")
    end

    it "routes to #edit" do
      get("/trans/1/edit").should route_to("trans#edit", :id => "1")
    end

    it "routes to #create" do
      post("/trans").should route_to("trans#create")
    end

    it "routes to #update" do
      put("/trans/1").should route_to("trans#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/trans/1").should route_to("trans#destroy", :id => "1")
    end

  end
end
