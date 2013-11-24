require "spec_helper"

describe ComunesController do
  describe "routing" do

    it "routes to #index" do
      get("/comunes").should route_to("comunes#index")
    end

    it "routes to #new" do
      get("/comunes/new").should route_to("comunes#new")
    end

    it "routes to #show" do
      get("/comunes/1").should route_to("comunes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/comunes/1/edit").should route_to("comunes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/comunes").should route_to("comunes#create")
    end

    it "routes to #update" do
      put("/comunes/1").should route_to("comunes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/comunes/1").should route_to("comunes#destroy", :id => "1")
    end

  end
end
