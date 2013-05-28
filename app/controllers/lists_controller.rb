class ListsController < ApplicationController
  def index
    @lists = [WishList.new(name: 'Music'),
              WishList.new(name: 'Home')]
  end
end
