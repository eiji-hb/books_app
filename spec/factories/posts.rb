FactoryBot.define do
  factory :post do
    title { "MyString" }
    user { nil }
    content { "MyText" }
  end
end
