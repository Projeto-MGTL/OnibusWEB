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

describe VeiculolocalidadesController do

  # This should return the minimal set of attributes required to create a valid
  # Veiculolocalidade. As you add validations to Veiculolocalidade, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "placa" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # VeiculolocalidadesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all veiculolocalidades as @veiculolocalidades" do
      veiculolocalidade = Veiculolocalidade.create! valid_attributes
      get :index, {}, valid_session
      assigns(:veiculolocalidades).should eq([veiculolocalidade])
    end
  end

  describe "GET show" do
    it "assigns the requested veiculolocalidade as @veiculolocalidade" do
      veiculolocalidade = Veiculolocalidade.create! valid_attributes
      get :show, {:id => veiculolocalidade.to_param}, valid_session
      assigns(:veiculolocalidade).should eq(veiculolocalidade)
    end
  end

  describe "GET new" do
    it "assigns a new veiculolocalidade as @veiculolocalidade" do
      get :new, {}, valid_session
      assigns(:veiculolocalidade).should be_a_new(Veiculolocalidade)
    end
  end

  describe "GET edit" do
    it "assigns the requested veiculolocalidade as @veiculolocalidade" do
      veiculolocalidade = Veiculolocalidade.create! valid_attributes
      get :edit, {:id => veiculolocalidade.to_param}, valid_session
      assigns(:veiculolocalidade).should eq(veiculolocalidade)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Veiculolocalidade" do
        expect {
          post :create, {:veiculolocalidade => valid_attributes}, valid_session
        }.to change(Veiculolocalidade, :count).by(1)
      end

      it "assigns a newly created veiculolocalidade as @veiculolocalidade" do
        post :create, {:veiculolocalidade => valid_attributes}, valid_session
        assigns(:veiculolocalidade).should be_a(Veiculolocalidade)
        assigns(:veiculolocalidade).should be_persisted
      end

      it "redirects to the created veiculolocalidade" do
        post :create, {:veiculolocalidade => valid_attributes}, valid_session
        response.should redirect_to(Veiculolocalidade.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved veiculolocalidade as @veiculolocalidade" do
        # Trigger the behavior that occurs when invalid params are submitted
        Veiculolocalidade.any_instance.stub(:save).and_return(false)
        post :create, {:veiculolocalidade => { "placa" => "invalid value" }}, valid_session
        assigns(:veiculolocalidade).should be_a_new(Veiculolocalidade)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Veiculolocalidade.any_instance.stub(:save).and_return(false)
        post :create, {:veiculolocalidade => { "placa" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested veiculolocalidade" do
        veiculolocalidade = Veiculolocalidade.create! valid_attributes
        # Assuming there are no other veiculolocalidades in the database, this
        # specifies that the Veiculolocalidade created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Veiculolocalidade.any_instance.should_receive(:update_attributes).with({ "placa" => "MyString" })
        put :update, {:id => veiculolocalidade.to_param, :veiculolocalidade => { "placa" => "MyString" }}, valid_session
      end

      it "assigns the requested veiculolocalidade as @veiculolocalidade" do
        veiculolocalidade = Veiculolocalidade.create! valid_attributes
        put :update, {:id => veiculolocalidade.to_param, :veiculolocalidade => valid_attributes}, valid_session
        assigns(:veiculolocalidade).should eq(veiculolocalidade)
      end

      it "redirects to the veiculolocalidade" do
        veiculolocalidade = Veiculolocalidade.create! valid_attributes
        put :update, {:id => veiculolocalidade.to_param, :veiculolocalidade => valid_attributes}, valid_session
        response.should redirect_to(veiculolocalidade)
      end
    end

    describe "with invalid params" do
      it "assigns the veiculolocalidade as @veiculolocalidade" do
        veiculolocalidade = Veiculolocalidade.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Veiculolocalidade.any_instance.stub(:save).and_return(false)
        put :update, {:id => veiculolocalidade.to_param, :veiculolocalidade => { "placa" => "invalid value" }}, valid_session
        assigns(:veiculolocalidade).should eq(veiculolocalidade)
      end

      it "re-renders the 'edit' template" do
        veiculolocalidade = Veiculolocalidade.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Veiculolocalidade.any_instance.stub(:save).and_return(false)
        put :update, {:id => veiculolocalidade.to_param, :veiculolocalidade => { "placa" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested veiculolocalidade" do
      veiculolocalidade = Veiculolocalidade.create! valid_attributes
      expect {
        delete :destroy, {:id => veiculolocalidade.to_param}, valid_session
      }.to change(Veiculolocalidade, :count).by(-1)
    end

    it "redirects to the veiculolocalidades list" do
      veiculolocalidade = Veiculolocalidade.create! valid_attributes
      delete :destroy, {:id => veiculolocalidade.to_param}, valid_session
      response.should redirect_to(veiculolocalidades_url)
    end
  end

end