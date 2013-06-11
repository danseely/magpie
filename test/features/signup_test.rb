require 'test_helper'

feature 'Signup Feature Test' do
  scenario 'signing up with valid data' do
    user = FactoryGirl.build :user    # Just use FactoryGirl to hold temporary data
    visit new_user_path
    fill_in 'Email', with: user.email
    fill_in 'Username', with: user.username
    fill_in 'Password', with: user.password
    fill_in 'Password confirmation', with: user.password
    click_button 'Create user'

    new_user = User.last
    new_user.email.must_eq user.email
  end
end
