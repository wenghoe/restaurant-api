module Api
  class DishesController < ApplicationController
    before_action :set_dish, only: :show

    # GET /dishes
    def index
      if params[:restaurant_id]
        @restaurant = Restaurant.find(params[:restaurant_id])
        @dishes = @restaurant.dishes
      else
        @dishes = Dish.all
      end

      render json: @dishes
    end

    # GET /dishes/1
    def show
      render json: @dish
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_dish
        @dish = Dish.find(params[:id])
      end
  end
end
