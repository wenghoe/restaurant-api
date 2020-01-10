FactoryBot.define do
  factory :dish do
    sequence(:name) { |n| "Dish#{n}" }

    trait :with_restaurants do
      after(:build) do |dish|
        dish.restaurants << FactoryBot.build_list(:restaurant, 2)
      end
    end
  end
end
