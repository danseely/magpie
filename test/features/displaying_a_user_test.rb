require 'test_helper'

feature 'Displaying a User Feature Test' do
  scenario 'displaying an existing user' do
    user = FactoryGirl.create :user, email: 'hello@example.com', username: 'helloworld'
    visit user_path user
    page.must_have_content 'hello@example.com'
    page.must_have_content 'helloworld'
  end
end
