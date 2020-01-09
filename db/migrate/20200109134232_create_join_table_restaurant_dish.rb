class CreateJoinTableRestaurantDish < ActiveRecord::Migration[6.0]
  def change
    create_join_table :dishes, :restaurants, table_name: :restaurant_dishes do |t|
      t.index [:dish_id, :restaurant_id], unique: true
      # t.index [:restaurant_id, :dish_id]
    end
  end
end
