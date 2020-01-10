require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to have_many(:restaurant_dishes) }
  it { is_expected.to have_many(:dishes).through(:restaurant_dishes) }
end
