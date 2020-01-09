class Dish < ApplicationRecord
  validates :name, presence: true

  has_many :restaurant_dishes
  has_many :restaurants, through: :restaurant_dishes
end
