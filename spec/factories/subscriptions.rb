FactoryBot.define do
  factory :subscription do
    title { "MyString" }
    price_per_month { "9.99" }
    status { "MyString" }
    frequency { "MyString" }
    customer { nil }
    tea { nil }
  end
end
