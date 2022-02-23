FactoryBot.define do
  factory :tea do
    name { "MyString" }
    description { "MyText" }
    temperature { 1 }
    brew_time_in_minutes { 1 }
    price_per_oz { "9.99" }
  end
end
