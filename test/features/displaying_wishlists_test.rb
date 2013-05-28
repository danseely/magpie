require "test_helper"

feature 'Displaying Wishlists Feature Test' do
  scenario 'has wishlists' do
    visit lists_path
    page.must_have_content "Music"
    page.must_have_content "Home"
  end
end
