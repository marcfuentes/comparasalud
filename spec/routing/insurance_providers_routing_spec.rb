require "spec_helper"

describe InsuranceProvidersController do
  describe "routing" do

    it "routes to #index" do
      get("/insurance_providers").should route_to("insurance_providers#index")
    end

    it "routes to #new" do
      get("/insurance_providers/new").should route_to("insurance_providers#new")
    end

    it "routes to #show" do
      get("/insurance_providers/1").should route_to("insurance_providers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/insurance_providers/1/edit").should route_to("insurance_providers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/insurance_providers").should route_to("insurance_providers#create")
    end

    it "routes to #update" do
      put("/insurance_providers/1").should route_to("insurance_providers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/insurance_providers/1").should route_to("insurance_providers#destroy", :id => "1")
    end

  end
end
