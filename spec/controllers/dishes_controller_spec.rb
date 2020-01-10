require 'rails_helper'

RSpec.describe Api::DishesController, type: :controller do
  describe "GET #index" do
    let!(:restaurant) { create(:restaurant, :with_dishes) }
    let!(:dishes) { restaurant.dishes }

    context "without restaurant id parameters" do
      before(:each) { get :index }

      it "returns all dishes" do
        expect(response.body).to eq(dishes.to_json)
      end

      it { should respond_with 200 }
    end

    context "with restaurant id parameters" do
      before(:each) { get :index, params: {restaurant_id: restaurant.id} }

      it "returns dishes of the restaurant" do
        expect(response.body).to eq(dishes.to_json)
      end

      it { should respond_with 200 }
    end
  end

  describe "GET #show" do
    let(:dish) { create(:dish) }
    before(:each) { get :show, params: {id: dish.id} }

    it "returns the information for one dish" do
      expect(response.body).to include(dish.id.to_s)
      expect(response.body).to include(dish.name)
    end

    it { should respond_with 200 }
  end

end
