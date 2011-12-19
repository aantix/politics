require "spec_helper"

describe TranscriptionsController do
  describe "routing" do

    it "routes to #index" do
      get("/transcriptions").should route_to("transcriptions#index")
    end

    it "routes to #new" do
      get("/transcriptions/new").should route_to("transcriptions#new")
    end

    it "routes to #show" do
      get("/transcriptions/1").should route_to("transcriptions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/transcriptions/1/edit").should route_to("transcriptions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/transcriptions").should route_to("transcriptions#create")
    end

    it "routes to #update" do
      put("/transcriptions/1").should route_to("transcriptions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/transcriptions/1").should route_to("transcriptions#destroy", :id => "1")
    end

  end
end
