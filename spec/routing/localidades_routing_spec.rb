require "spec_helper"

describe LocalidadesController do
  describe "routing" do

    it "routes to #index" do
      get("/localidades").should route_to("localidades#index")
    end

    it "routes to #new" do
      get("/localidades/new").should route_to("localidades#new")
    end

    it "routes to #show" do
      get("/localidades/1").should route_to("localidades#show", :id => "1")
    end

    it "routes to #edit" do
      get("/localidades/1/edit").should route_to("localidades#edit", :id => "1")
    end

    it "routes to #create" do
      post("/localidades").should route_to("localidades#create")
    end

    it "routes to #update" do
      put("/localidades/1").should route_to("localidades#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/localidades/1").should route_to("localidades#destroy", :id => "1")
    end

  end
end
