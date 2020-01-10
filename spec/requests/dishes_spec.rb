require 'rails_helper'

RSpec.describe "Dishes", type: :request do
  describe "GET #index" do
    let!(:restaurant) { create(:restaurant, :with_dishes) }
    let!(:dishes) { restaurant.dishes }

    context "without restaurant id parameters" do
      it "returns all dishes" do
        get api_dishes_path
        expect(response.body).to eq(dishes.to_json)
        expect(response).to have_http_status(200)
      end
    end

    context "with restaurant id parameters" do
      it "returns dishes of the restaurant" do
        get api_restaurant_dishes_path(restaurant_id: restaurant.id)
        expect(response.body).to eq(dishes.to_json)
        expect(response).to have_http_status(200)
      end
    end
  end

  describe "GET #show" do
    let(:dish) { create(:dish) }

    it "returns the information for one dish" do
      get api_dish_path(id: dish.id)
      expect(response.body).to include(dish.id.to_s)
      expect(response.body).to include(dish.name)
      expect(response).to have_http_status(200)
    end
  end
end
