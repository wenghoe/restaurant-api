require "rails_helper"

RSpec.describe Api::RestaurantsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/api/restaurants").to route_to("api/restaurants#index")
    end

    it "routes to #show" do
      expect(:get => "/api/restaurants/1").to route_to("api/restaurants#show", :id => "1")
    end

    it "routes to dishes restaurant #index" do
      expect(:get => "/api/dishes/1/restaurants").to route_to("api/restaurants#index", :dish_id => "1")
    end
  end
end
