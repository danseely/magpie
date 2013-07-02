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

  def new
    @list = Wishlist.new
  end

  def create
    @list = Wishlist.create params[:wishlist].merge(user_id: current_user.id)
    redirect_to list_path @list
  end
end
