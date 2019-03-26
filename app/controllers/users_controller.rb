class UsersController < ApplicationController
  skip_before_action :authenticate_user, only: [:new, :create]
  # before_action :set_user, only: [:show, :create, :update, :destroy]

  def show
    @user = User.find_by(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    user = User.create(user_params)
    if user.valid?
      session[:user_id] = user.id
      redirect_to restaurants_path
    else
      flash[:message] = user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :user_name, :password, :password_confirmation)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
