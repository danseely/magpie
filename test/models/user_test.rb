require "test_helper"

describe User do
  describe 'validations' do
    let(:user) { FactoryGirl.build :user }

    it 'must have a email address' do
      user.email = ''
      user.valid?.wont_equal true
      user.errors[:email].must_include "can't be blank"
    end

    it 'must have a unique email address' do
      FactoryGirl.create :user
      user.valid?.wont_equal true
      user.errors[:email].must_include "has already been taken"
    end

    it 'must have a valid email address' do
      user.email = 'test@example'
      user.valid?.wont_equal true
    end

    it 'must have a username'
    it 'must have a unique username'
    it 'must have a password'
    it 'must have matching passwords'
  end
end
