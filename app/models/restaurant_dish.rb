class RestaurantDish < ActiveRecord::Base
  belongs_to  :dish
  belongs_to  :restaurant
end
