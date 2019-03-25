class UsersController < ApplicationController
  # before_action :set_user, only: [:show, :create, :update, :destroy]
  def index
  end

  def new
  end

  def create
    byebug
    if params[:password]
    @user.create(user_params)
    # where will user be redirected
    # redirect_to
  end

  private

  def user_params
    params.require(:user).permit(:name, :user_name, :password)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
