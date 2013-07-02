require 'factory_girl'

FactoryGirl.define do
  factory :wishlist do
    name "Technology"
    user
    item_count 4
  end
end
