require 'factory_girl'

FactoryGirl.define do
  factory :user do
    email "jdoe@example.com"
    username "johndoe"
    password "p@ssword"
  end
end
