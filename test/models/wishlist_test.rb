require "test_helper"

describe Wishlist do
  describe 'associations' do
    it 'can belong to a user' do
      user = FactoryGirl.create :user
      wishlist = FactoryGirl.create :wishlist
      wishlist.user = user
      wishlist.save
      wishlist.user_id.must_equal user.id
    end
  end

  describe 'validations' do
    let(:wishlist) { FactoryGirl.build :wishlist }

    it 'must have a name' do
      wishlist.name = ''
      wishlist.valid?.wont_equal true
      wishlist.errors[:name].must_include "can't be blank"
    end
  end
end
