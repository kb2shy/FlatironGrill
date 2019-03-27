class UsersController < ApplicationController
  skip_before_action :authenticate_user, only: [:new, :create, :edit]
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def show
    @reviews = Review.where(user: @user)
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

  # def edit
  # end

  def update
    if @user.update(user_params)
      redirect_to user_path(current_user)
    else
      flash[:message] = @user.errors.full_messages
      redirect_to edit_user_path(@user)
    end
  end

  def destroy
    Favorite.where(user: @user).destroy_all
    Review.where(user: @user).destroy_all
    @user.destroy
    session.clear
    redirect_to login_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :user_name, :password, :password_confirmation)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
