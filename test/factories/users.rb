require 'factory_girl'

FactoryGirl.define do
  factory :user do
    email "jdoe@example.com"
    username "johndoe"
    password "p@ssword"
    name "John Doe"
  end
end
