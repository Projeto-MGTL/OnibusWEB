require "spec_helper"

describe LocalidadelinhasController do
  describe "routing" do

    it "routes to #index" do
      get("/localidadelinhas").should route_to("localidadelinhas#index")
    end

    it "routes to #new" do
      get("/localidadelinhas/new").should route_to("localidadelinhas#new")
    end

    it "routes to #show" do
      get("/localidadelinhas/1").should route_to("localidadelinhas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/localidadelinhas/1/edit").should route_to("localidadelinhas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/localidadelinhas").should route_to("localidadelinhas#create")
    end

    it "routes to #update" do
      put("/localidadelinhas/1").should route_to("localidadelinhas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/localidadelinhas/1").should route_to("localidadelinhas#destroy", :id => "1")
    end

  end
end
