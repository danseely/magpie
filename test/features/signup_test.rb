require 'test_helper'

feature 'Signup Feature Test' do

  def create_user(user)
    visit new_user_path
    fill_in 'Email', with: user.email
    fill_in 'Username', with: user.username
    fill_in 'Password', with: user.password
    fill_in 'Re-enter password', with: user.password
    click_button 'Sign Up'
  end

  scenario 'signing up with valid data' do
    user = FactoryGirl.build :user # Just use FactoryGirl to hold temporary data
    create_user(user)

    new_user = User.last
    new_user.email.must_equal user.email
    new_user.username.must_equal user.username
    current_path.must_equal user_path(new_user)
  end

  scenario 'signing up with a duplicate username' do
    FactoryGirl.create :user, username: 'johndoe'
    user = FactoryGirl.build :user, username: 'johndoe' # Just use FactoryGirl to hold temporary data
    create_user(user)
    User.count.must_equal 1
    current_path.must_equal '/users'
    page.must_have_content 'Username has already been taken'
  end
end
