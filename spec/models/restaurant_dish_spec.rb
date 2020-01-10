require 'rails_helper'

RSpec.describe RestaurantDish, type: :model do
  it { should belong_to(:dish) }
  it { should belong_to(:restaurant) }
end
