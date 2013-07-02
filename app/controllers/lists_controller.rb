class ListsController < ApplicationController
  before_filter :require_login

  def index
    @lists = Wishlist.order 'name'
    render 'empty' and return if @lists.empty?
  end

  def show
    @lists = Wishlist.order 'name'
    @list = Wishlist.find params[:id]
  end
end
