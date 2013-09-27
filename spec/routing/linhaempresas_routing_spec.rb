require "spec_helper"

describe LinhaempresasController do
  describe "routing" do

    it "routes to #index" do
      get("/linhaempresas").should route_to("linhaempresas#index")
    end

    it "routes to #new" do
      get("/linhaempresas/new").should route_to("linhaempresas#new")
    end

    it "routes to #show" do
      get("/linhaempresas/1").should route_to("linhaempresas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/linhaempresas/1/edit").should route_to("linhaempresas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/linhaempresas").should route_to("linhaempresas#create")
    end

    it "routes to #update" do
      put("/linhaempresas/1").should route_to("linhaempresas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/linhaempresas/1").should route_to("linhaempresas#destroy", :id => "1")
    end

  end
end
