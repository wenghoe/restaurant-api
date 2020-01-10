module Api
  class RestaurantsController < ApplicationController
    before_action :set_restaurant, only: [:show, :update, :destroy]

    # GET /restaurants
    def index
      if params[:dish_id]
        @dish = Dish.find(params[:dish_id])
        @restaurants = @dish.restaurants
      else
        @restaurants = Restaurant.all
      end

      render json: @restaurants
    end

    # GET /restaurants/1
    def show
      render json: @restaurant
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_restaurant
        @restaurant = Restaurant.find(params[:id])
      end
  end
end
