require "spec_helper"

describe VeiculosController do
  describe "routing" do

    it "routes to #index" do
      get("/veiculos").should route_to("veiculos#index")
    end

    it "routes to #new" do
      get("/veiculos/new").should route_to("veiculos#new")
    end

    it "routes to #show" do
      get("/veiculos/1").should route_to("veiculos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/veiculos/1/edit").should route_to("veiculos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/veiculos").should route_to("veiculos#create")
    end

    it "routes to #update" do
      put("/veiculos/1").should route_to("veiculos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/veiculos/1").should route_to("veiculos#destroy", :id => "1")
    end

  end
end
