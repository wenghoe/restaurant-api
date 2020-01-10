require "rails_helper"

RSpec.describe Api::DishesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/api/dishes").to route_to("api/dishes#index")
    end

    it "routes to #show" do
      expect(:get => "/api/dishes/1").to route_to("api/dishes#show", :id => "1")
    end

    it "routes to restaurant dishes #index" do
      expect(:get => "/api/restaurants/1/dishes").to route_to("api/dishes#index", :restaurant_id => "1")
    end
  end
end
