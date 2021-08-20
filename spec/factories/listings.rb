FactoryBot.define do
  factory :listing do
    user { nil }
    category { nil }
    title { "MyString" }
    description { "MyText" }
    price { 1 }
    sold { false }
  end
end
