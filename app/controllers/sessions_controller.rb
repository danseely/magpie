class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = login params[:user][:email], params[:user][:password]
    redirect_to lists_path, notice: "Welcome #{@user.name}"
  end
end
