require "spec_helper"

describe CidadeempresasController do
  describe "routing" do

    it "routes to #index" do
      get("/cidadeempresas").should route_to("cidadeempresas#index")
    end

    it "routes to #new" do
      get("/cidadeempresas/new").should route_to("cidadeempresas#new")
    end

    it "routes to #show" do
      get("/cidadeempresas/1").should route_to("cidadeempresas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cidadeempresas/1/edit").should route_to("cidadeempresas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cidadeempresas").should route_to("cidadeempresas#create")
    end

    it "routes to #update" do
      put("/cidadeempresas/1").should route_to("cidadeempresas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cidadeempresas/1").should route_to("cidadeempresas#destroy", :id => "1")
    end

  end
end
