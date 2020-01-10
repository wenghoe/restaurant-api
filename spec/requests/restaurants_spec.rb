require 'rails_helper'

RSpec.describe "Restaurants", type: :request do
  describe "GET #index" do
    let!(:dish) { create(:dish, :with_restaurants) }
    let!(:restaurants) { dish.restaurants }

    context "without dish id parameters" do
      it "returns all dishes" do
        get api_restaurants_path
        expect(response.body).to eq(restaurants.to_json)
        expect(response).to have_http_status(200)
      end
    end

    context "with dish id parameters" do
      it "returns restaurants of the dish" do
        get api_dish_restaurants_path(dish_id: dish.id)
        expect(response.body).to eq(restaurants.to_json)
        expect(response).to have_http_status(200)
      end
    end
  end

  describe "GET #show" do
    let(:restaurant) { create(:restaurant) }

    it "returns the information for one restaurant" do
      get api_restaurant_path(id: restaurant.id)
      expect(response.body).to include(restaurant.id.to_s)
      expect(response.body).to include(restaurant.name)
      expect(response).to have_http_status(200)
    end
  end
end
