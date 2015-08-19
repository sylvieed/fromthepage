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

RSpec.describe ScCollectionsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # ScCollection. As you add validations to ScCollection, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ScCollectionsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all sc_collections as @sc_collections" do
      sc_collection = ScCollection.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:sc_collections)).to eq([sc_collection])
    end
  end

  describe "GET show" do
    it "assigns the requested sc_collection as @sc_collection" do
      sc_collection = ScCollection.create! valid_attributes
      get :show, {:id => sc_collection.to_param}, valid_session
      expect(assigns(:sc_collection)).to eq(sc_collection)
    end
  end

  describe "GET new" do
    it "assigns a new sc_collection as @sc_collection" do
      get :new, {}, valid_session
      expect(assigns(:sc_collection)).to be_a_new(ScCollection)
    end
  end

  describe "GET edit" do
    it "assigns the requested sc_collection as @sc_collection" do
      sc_collection = ScCollection.create! valid_attributes
      get :edit, {:id => sc_collection.to_param}, valid_session
      expect(assigns(:sc_collection)).to eq(sc_collection)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ScCollection" do
        expect {
          post :create, {:sc_collection => valid_attributes}, valid_session
        }.to change(ScCollection, :count).by(1)
      end

      it "assigns a newly created sc_collection as @sc_collection" do
        post :create, {:sc_collection => valid_attributes}, valid_session
        expect(assigns(:sc_collection)).to be_a(ScCollection)
        expect(assigns(:sc_collection)).to be_persisted
      end

      it "redirects to the created sc_collection" do
        post :create, {:sc_collection => valid_attributes}, valid_session
        expect(response).to redirect_to(ScCollection.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved sc_collection as @sc_collection" do
        post :create, {:sc_collection => invalid_attributes}, valid_session
        expect(assigns(:sc_collection)).to be_a_new(ScCollection)
      end

      it "re-renders the 'new' template" do
        post :create, {:sc_collection => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested sc_collection" do
        sc_collection = ScCollection.create! valid_attributes
        put :update, {:id => sc_collection.to_param, :sc_collection => new_attributes}, valid_session
        sc_collection.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested sc_collection as @sc_collection" do
        sc_collection = ScCollection.create! valid_attributes
        put :update, {:id => sc_collection.to_param, :sc_collection => valid_attributes}, valid_session
        expect(assigns(:sc_collection)).to eq(sc_collection)
      end

      it "redirects to the sc_collection" do
        sc_collection = ScCollection.create! valid_attributes
        put :update, {:id => sc_collection.to_param, :sc_collection => valid_attributes}, valid_session
        expect(response).to redirect_to(sc_collection)
      end
    end

    describe "with invalid params" do
      it "assigns the sc_collection as @sc_collection" do
        sc_collection = ScCollection.create! valid_attributes
        put :update, {:id => sc_collection.to_param, :sc_collection => invalid_attributes}, valid_session
        expect(assigns(:sc_collection)).to eq(sc_collection)
      end

      it "re-renders the 'edit' template" do
        sc_collection = ScCollection.create! valid_attributes
        put :update, {:id => sc_collection.to_param, :sc_collection => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested sc_collection" do
      sc_collection = ScCollection.create! valid_attributes
      expect {
        delete :destroy, {:id => sc_collection.to_param}, valid_session
      }.to change(ScCollection, :count).by(-1)
    end

    it "redirects to the sc_collections list" do
      sc_collection = ScCollection.create! valid_attributes
      delete :destroy, {:id => sc_collection.to_param}, valid_session
      expect(response).to redirect_to(sc_collections_url)
    end
  end

end
