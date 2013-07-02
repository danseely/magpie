require 'test_helper'

feature 'Creating a Wishlist Feature Test' do
  scenario 'creating a wishlist with valid data' do
    user = FactoryGirl.create :user
    signin user
    visit new_list_path
    fill_in 'Name', with: 'A new Wishlist'
    click_button 'Create Wishlist'

    list = Wishlist.last
    list.name.must_equal 'A new Wishlist'
    list.user_id.must_equal user.id
  end
end
