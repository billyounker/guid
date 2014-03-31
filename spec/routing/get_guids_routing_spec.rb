require "spec_helper"

describe GetGuidsController do
  describe "routing" do

    it "routes to #index" do
      get("/get_guids").should route_to("get_guids#index")
    end

    it "routes to #new" do
      get("/get_guids/new").should route_to("get_guids#new")
    end

    it "routes to #show" do
      get("/get_guids/1").should route_to("get_guids#show", :id => "1")
    end

    it "routes to #edit" do
      get("/get_guids/1/edit").should route_to("get_guids#edit", :id => "1")
    end

    it "routes to #create" do
      post("/get_guids").should route_to("get_guids#create")
    end

    it "routes to #update" do
      put("/get_guids/1").should route_to("get_guids#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/get_guids/1").should route_to("get_guids#destroy", :id => "1")
    end

  end
end
