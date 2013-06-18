class User < ActiveRecord::Base
  has_many :wishlists

  attr_accessible :email, :password, :password_confirmation, :username

  validates :email,     :presence => true,
                        :uniqueness => true,
                        :format => { with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/  }
  validates :username,  :presence => true,
                        :uniqueness => true
  validates :password,  :presence => true,
                        :confirmation => true
end
