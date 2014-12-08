require 'rails_helper'

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

RSpec.describe TutorialsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Tutorial. As you add validations to Tutorial, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TutorialsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  # devise sign in and sign out
  before :each do
    @request.env['devise.mapping'] = Devise.mappings[:admin]
    @admin = create :admin
    sign_in @admin
  end

  after :each do
    sign_out @admin
  end

  describe "GET index" do
    it "assigns all tutorials as @tutorials" do
      tutorial = Tutorial.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:tutorials)).to eq([tutorial])
    end
  end

  describe "GET show" do
    it "assigns the requested tutorial as @tutorial" do
      tutorial = Tutorial.create! valid_attributes
      get :show, {:id => tutorial.to_param}, valid_session
      expect(assigns(:tutorial)).to eq(tutorial)
    end
  end

  describe "GET new" do
    it "assigns a new tutorial as @tutorial" do
      get :new, {}, valid_session
      expect(assigns(:tutorial)).to be_a_new(Tutorial)
    end
  end

  describe "GET edit" do
    it "assigns the requested tutorial as @tutorial" do
      tutorial = Tutorial.create! valid_attributes
      get :edit, {:id => tutorial.to_param}, valid_session
      expect(assigns(:tutorial)).to eq(tutorial)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Tutorial" do
        expect {
          post :create, {:tutorial => valid_attributes}, valid_session
        }.to change(Tutorial, :count).by(1)
      end

      it "assigns a newly created tutorial as @tutorial" do
        post :create, {:tutorial => valid_attributes}, valid_session
        expect(assigns(:tutorial)).to be_a(Tutorial)
        expect(assigns(:tutorial)).to be_persisted
      end

      it "redirects to the created tutorial" do
        post :create, {:tutorial => valid_attributes}, valid_session
        expect(response).to redirect_to(Tutorial.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved tutorial as @tutorial" do
        post :create, {:tutorial => invalid_attributes}, valid_session
        expect(assigns(:tutorial)).to be_a_new(Tutorial)
      end

      it "re-renders the 'new' template" do
        post :create, {:tutorial => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested tutorial" do
        tutorial = Tutorial.create! valid_attributes
        put :update, {:id => tutorial.to_param, :tutorial => new_attributes}, valid_session
        tutorial.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested tutorial as @tutorial" do
        tutorial = Tutorial.create! valid_attributes
        put :update, {:id => tutorial.to_param, :tutorial => valid_attributes}, valid_session
        expect(assigns(:tutorial)).to eq(tutorial)
      end

      it "redirects to the tutorial" do
        tutorial = Tutorial.create! valid_attributes
        put :update, {:id => tutorial.to_param, :tutorial => valid_attributes}, valid_session
        expect(response).to redirect_to(tutorial)
      end
    end

    describe "with invalid params" do
      it "assigns the tutorial as @tutorial" do
        tutorial = Tutorial.create! valid_attributes
        put :update, {:id => tutorial.to_param, :tutorial => invalid_attributes}, valid_session
        expect(assigns(:tutorial)).to eq(tutorial)
      end

      it "re-renders the 'edit' template" do
        tutorial = Tutorial.create! valid_attributes
        put :update, {:id => tutorial.to_param, :tutorial => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested tutorial" do
      tutorial = Tutorial.create! valid_attributes
      expect {
        delete :destroy, {:id => tutorial.to_param}, valid_session
      }.to change(Tutorial, :count).by(-1)
    end

    it "redirects to the tutorials list" do
      tutorial = Tutorial.create! valid_attributes
      delete :destroy, {:id => tutorial.to_param}, valid_session
      expect(response).to redirect_to(tutorials_url)
    end
  end

end
