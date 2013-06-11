class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create params[:user]
    render :new and return unless @user.valid?
    redirect_to lists_path
  end
end
