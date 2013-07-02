require 'test_helper'

feature 'Creating a Wishlist Feature Test' do
  before do
    @user = FactoryGirl.create :user
    signin @user
    visit new_list_path
  end

  scenario 'creating a wishlist with valid data' do
    fill_in 'Name', with: 'A new Wishlist'
    click_button 'Create Wishlist'

    list = Wishlist.last
    list.name.must_equal 'A new Wishlist'
    list.user_id.must_equal @user.id
  end

  scenario 'creating a wishlist without a name' do
    fill_in 'Name', with: ''
    click_button 'Create Wishlist'
    Wishlist.count.must_equal 0
    current_path.must_equal '/lists'
    page.must_have_content "Name can't be blank"
  end
end
