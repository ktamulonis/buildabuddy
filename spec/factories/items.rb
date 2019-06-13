FactoryBot.define do
  factory :item do
    description { "Bear" }
    size { "small" }
    quantity { 3 }
    cost { 1.00 }
    sales_price { 3.00 }
  end
end