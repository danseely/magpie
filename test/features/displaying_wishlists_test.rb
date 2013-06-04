require "test_helper"

feature 'Displaying Wishlists Feature Test' do
  before do
    FactoryGirl.create :wishlist, name: 'Music', item_count: 12
    FactoryGirl.create :wishlist, name: 'Home', item_count: 32
    visit lists_path
  end

  scenario 'displaying the wishlist names' do
    page.must_have_content 'Music'
    page.must_have_content 'Home'
  end

  scenario 'displaying the wishlist item count' do
    page.must_have_content '(12)'
    page.must_have_content '(32)'
  end
end
