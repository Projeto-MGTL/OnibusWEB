require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe LinhaempresasController do

  # This should return the minimal set of attributes required to create a valid
  # Linhaempresa. As you add validations to Linhaempresa, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "nomelinha" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # LinhaempresasController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all linhaempresas as @linhaempresas" do
      linhaempresa = Linhaempresa.create! valid_attributes
      get :index, {}, valid_session
      assigns(:linhaempresas).should eq([linhaempresa])
    end
  end

  describe "GET show" do
    it "assigns the requested linhaempresa as @linhaempresa" do
      linhaempresa = Linhaempresa.create! valid_attributes
      get :show, {:id => linhaempresa.to_param}, valid_session
      assigns(:linhaempresa).should eq(linhaempresa)
    end
  end

  describe "GET new" do
    it "assigns a new linhaempresa as @linhaempresa" do
      get :new, {}, valid_session
      assigns(:linhaempresa).should be_a_new(Linhaempresa)
    end
  end

  describe "GET edit" do
    it "assigns the requested linhaempresa as @linhaempresa" do
      linhaempresa = Linhaempresa.create! valid_attributes
      get :edit, {:id => linhaempresa.to_param}, valid_session
      assigns(:linhaempresa).should eq(linhaempresa)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Linhaempresa" do
        expect {
          post :create, {:linhaempresa => valid_attributes}, valid_session
        }.to change(Linhaempresa, :count).by(1)
      end

      it "assigns a newly created linhaempresa as @linhaempresa" do
        post :create, {:linhaempresa => valid_attributes}, valid_session
        assigns(:linhaempresa).should be_a(Linhaempresa)
        assigns(:linhaempresa).should be_persisted
      end

      it "redirects to the created linhaempresa" do
        post :create, {:linhaempresa => valid_attributes}, valid_session
        response.should redirect_to(Linhaempresa.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved linhaempresa as @linhaempresa" do
        # Trigger the behavior that occurs when invalid params are submitted
        Linhaempresa.any_instance.stub(:save).and_return(false)
        post :create, {:linhaempresa => { "nomelinha" => "invalid value" }}, valid_session
        assigns(:linhaempresa).should be_a_new(Linhaempresa)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Linhaempresa.any_instance.stub(:save).and_return(false)
        post :create, {:linhaempresa => { "nomelinha" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested linhaempresa" do
        linhaempresa = Linhaempresa.create! valid_attributes
        # Assuming there are no other linhaempresas in the database, this
        # specifies that the Linhaempresa created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Linhaempresa.any_instance.should_receive(:update_attributes).with({ "nomelinha" => "MyString" })
        put :update, {:id => linhaempresa.to_param, :linhaempresa => { "nomelinha" => "MyString" }}, valid_session
      end

      it "assigns the requested linhaempresa as @linhaempresa" do
        linhaempresa = Linhaempresa.create! valid_attributes
        put :update, {:id => linhaempresa.to_param, :linhaempresa => valid_attributes}, valid_session
        assigns(:linhaempresa).should eq(linhaempresa)
      end

      it "redirects to the linhaempresa" do
        linhaempresa = Linhaempresa.create! valid_attributes
        put :update, {:id => linhaempresa.to_param, :linhaempresa => valid_attributes}, valid_session
        response.should redirect_to(linhaempresa)
      end
    end

    describe "with invalid params" do
      it "assigns the linhaempresa as @linhaempresa" do
        linhaempresa = Linhaempresa.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Linhaempresa.any_instance.stub(:save).and_return(false)
        put :update, {:id => linhaempresa.to_param, :linhaempresa => { "nomelinha" => "invalid value" }}, valid_session
        assigns(:linhaempresa).should eq(linhaempresa)
      end

      it "re-renders the 'edit' template" do
        linhaempresa = Linhaempresa.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Linhaempresa.any_instance.stub(:save).and_return(false)
        put :update, {:id => linhaempresa.to_param, :linhaempresa => { "nomelinha" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested linhaempresa" do
      linhaempresa = Linhaempresa.create! valid_attributes
      expect {
        delete :destroy, {:id => linhaempresa.to_param}, valid_session
      }.to change(Linhaempresa, :count).by(-1)
    end

    it "redirects to the linhaempresas list" do
      linhaempresa = Linhaempresa.create! valid_attributes
      delete :destroy, {:id => linhaempresa.to_param}, valid_session
      response.should redirect_to(linhaempresas_url)
    end
  end

end
