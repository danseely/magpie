require "test_helper"

feature 'Displaying Wishlists Feature Test' do
  scenario 'displaying the wishlist names' do
    FactoryGirl.create :wishlist, name: 'Music'
    FactoryGirl.create :wishlist, name: 'Home'

    visit lists_path
    page.must_have_content 'Music'
    page.must_have_content 'Home'
  end
end
