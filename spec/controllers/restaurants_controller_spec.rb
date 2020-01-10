require 'rails_helper'

RSpec.describe Api::RestaurantsController, type: :controller do
  describe "GET #index" do
    let!(:dish) { create(:dish, :with_restaurants) }
    let!(:restaurants) { dish.restaurants }

    context "without dish id parameters" do
      before(:each) { get :index }

      it "returns all dishes" do
        expect(response.body).to eq(restaurants.to_json)
      end

      it { should respond_with 200 }
    end

    context "with dish id parameters" do
      before(:each) { get :index, params: {dish_id: dish.id} }

      it "returns restaurants of the dish" do
        expect(response.body).to eq(restaurants.to_json)
      end

      it { should respond_with 200 }
    end
  end

  describe "GET #show" do
    let(:restaurant) { create(:restaurant) }
    before(:each) { get :show, params: {id: restaurant.id} }

    it "returns the information for one restaurant" do
      expect(response.body).to include(restaurant.id.to_s)
      expect(response.body).to include(restaurant.name)
    end

    it { should respond_with 200 }
  end

end
