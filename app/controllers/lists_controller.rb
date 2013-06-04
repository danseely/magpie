class ListsController < ApplicationController
  def index
    @lists = Wishlist.order 'name'
    render 'empty' and return if @lists.empty?
  end
end
