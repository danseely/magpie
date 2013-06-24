class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = login params[:user][:email], params[:user][:password]
    unless @user
      @user = User.new
      render :new, error: 'Invalid email or password' and return
    end
    redirect_to lists_path, notice: "Welcome #{@user.name}"
  end
end
