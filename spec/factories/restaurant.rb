FactoryBot.define do
  factory :restaurant do
    sequence(:name) { |n| "Restaurant#{n}" }

    trait :with_dishes do
      after(:build) do |restaurant|
        restaurant.dishes << FactoryBot.build_list(:dish, 2)
      end
    end
  end
end
