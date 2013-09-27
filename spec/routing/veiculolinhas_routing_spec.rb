require "spec_helper"

describe VeiculolinhasController do
  describe "routing" do

    it "routes to #index" do
      get("/veiculolinhas").should route_to("veiculolinhas#index")
    end

    it "routes to #new" do
      get("/veiculolinhas/new").should route_to("veiculolinhas#new")
    end

    it "routes to #show" do
      get("/veiculolinhas/1").should route_to("veiculolinhas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/veiculolinhas/1/edit").should route_to("veiculolinhas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/veiculolinhas").should route_to("veiculolinhas#create")
    end

    it "routes to #update" do
      put("/veiculolinhas/1").should route_to("veiculolinhas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/veiculolinhas/1").should route_to("veiculolinhas#destroy", :id => "1")
    end

  end
end
