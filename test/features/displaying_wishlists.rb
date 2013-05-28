require 'test_helper'

describe 'Displaying Wishlists' do
  describe "GET /lists" do
    it 'should display the avilable wishlists' do
      visit lists_path
    end
  end
end
