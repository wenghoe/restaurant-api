class Restaurant < ApplicationRecord
  validates :name, presence: true

  has_many :restaurant_dishes
  has_many :dishes, through: :restaurant_dishes
end
