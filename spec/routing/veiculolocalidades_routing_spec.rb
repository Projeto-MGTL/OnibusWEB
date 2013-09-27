require "spec_helper"

describe VeiculolocalidadesController do
  describe "routing" do

    it "routes to #index" do
      get("/veiculolocalidades").should route_to("veiculolocalidades#index")
    end

    it "routes to #new" do
      get("/veiculolocalidades/new").should route_to("veiculolocalidades#new")
    end

    it "routes to #show" do
      get("/veiculolocalidades/1").should route_to("veiculolocalidades#show", :id => "1")
    end

    it "routes to #edit" do
      get("/veiculolocalidades/1/edit").should route_to("veiculolocalidades#edit", :id => "1")
    end

    it "routes to #create" do
      post("/veiculolocalidades").should route_to("veiculolocalidades#create")
    end

    it "routes to #update" do
      put("/veiculolocalidades/1").should route_to("veiculolocalidades#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/veiculolocalidades/1").should route_to("veiculolocalidades#destroy", :id => "1")
    end

  end
end
