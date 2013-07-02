class Wishlist < ActiveRecord::Base
  belongs_to :user

  attr_accessible :item_count, :name, :user_id
end
