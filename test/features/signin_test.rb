require 'test_helper'

feature 'Signin Feature Test' do
  scenario 'signing in with a valid email address or password' do
    user = FactoryGirl.create :user
    visit signin_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign In'

    current_path.must_equal lists_path
    page.must_have_content "Welcome #{user.first_name} #{user.last_name}"
  end
end
