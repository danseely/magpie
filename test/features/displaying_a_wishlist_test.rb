require 'test_helper'

feature 'Displaying a Wishlist Feature Test' do
  scenario 'displaying an existing wishlist' do
    signin FactoryGirl.create(:user)
    wishlist = FactoryGirl.create :wishlist, name: 'Cooking', item_count: 107
    visit "/lists/#{wishlist.id}"
    page.must_have_content 'Cooking'
    page.must_have_content '107'
  end
end
