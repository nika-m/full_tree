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

RSpec.describe ListingTypesController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # ListingType. As you add validations to ListingType, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ListingTypesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all listing_types as @listing_types" do
      listing_type = ListingType.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:listing_types)).to eq([listing_type])
    end
  end

  describe "GET show" do
    it "assigns the requested listing_type as @listing_type" do
      listing_type = ListingType.create! valid_attributes
      get :show, {:id => listing_type.to_param}, valid_session
      expect(assigns(:listing_type)).to eq(listing_type)
    end
  end

  describe "GET new" do
    it "assigns a new listing_type as @listing_type" do
      get :new, {}, valid_session
      expect(assigns(:listing_type)).to be_a_new(ListingType)
    end
  end

  describe "GET edit" do
    it "assigns the requested listing_type as @listing_type" do
      listing_type = ListingType.create! valid_attributes
      get :edit, {:id => listing_type.to_param}, valid_session
      expect(assigns(:listing_type)).to eq(listing_type)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ListingType" do
        expect {
          post :create, {:listing_type => valid_attributes}, valid_session
        }.to change(ListingType, :count).by(1)
      end

      it "assigns a newly created listing_type as @listing_type" do
        post :create, {:listing_type => valid_attributes}, valid_session
        expect(assigns(:listing_type)).to be_a(ListingType)
        expect(assigns(:listing_type)).to be_persisted
      end

      it "redirects to the created listing_type" do
        post :create, {:listing_type => valid_attributes}, valid_session
        expect(response).to redirect_to(ListingType.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved listing_type as @listing_type" do
        post :create, {:listing_type => invalid_attributes}, valid_session
        expect(assigns(:listing_type)).to be_a_new(ListingType)
      end

      it "re-renders the 'new' template" do
        post :create, {:listing_type => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested listing_type" do
        listing_type = ListingType.create! valid_attributes
        put :update, {:id => listing_type.to_param, :listing_type => new_attributes}, valid_session
        listing_type.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested listing_type as @listing_type" do
        listing_type = ListingType.create! valid_attributes
        put :update, {:id => listing_type.to_param, :listing_type => valid_attributes}, valid_session
        expect(assigns(:listing_type)).to eq(listing_type)
      end

      it "redirects to the listing_type" do
        listing_type = ListingType.create! valid_attributes
        put :update, {:id => listing_type.to_param, :listing_type => valid_attributes}, valid_session
        expect(response).to redirect_to(listing_type)
      end
    end

    describe "with invalid params" do
      it "assigns the listing_type as @listing_type" do
        listing_type = ListingType.create! valid_attributes
        put :update, {:id => listing_type.to_param, :listing_type => invalid_attributes}, valid_session
        expect(assigns(:listing_type)).to eq(listing_type)
      end

      it "re-renders the 'edit' template" do
        listing_type = ListingType.create! valid_attributes
        put :update, {:id => listing_type.to_param, :listing_type => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested listing_type" do
      listing_type = ListingType.create! valid_attributes
      expect {
        delete :destroy, {:id => listing_type.to_param}, valid_session
      }.to change(ListingType, :count).by(-1)
    end

    it "redirects to the listing_types list" do
      listing_type = ListingType.create! valid_attributes
      delete :destroy, {:id => listing_type.to_param}, valid_session
      expect(response).to redirect_to(listing_types_url)
    end
  end

end
