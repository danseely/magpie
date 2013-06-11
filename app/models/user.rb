class User < ActiveRecord::Base
  attr_accessible :email, :password, :username

  validates :password, :confirmation => true
end
