require 'factory_girl'

FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "jdoe#{n}@example.com"}
    sequence(:username) {|n| "johndoe#{n}"}
    password "p@ssword"
    name "John Doe"
  end
end
