class SessionsController < ApplicationController
  skip_before_action :authenticate_user, only: [:new, :create]

  def new
  end

  def create
    user = User.find_by(user_name: params[:user_name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to restaurants_path
    else
      flash[:message] = 'Incorrect Login'
      redirect_to login_path
    end
  end

  def destroy
    session.clear
    redirect_to restaurants_path
  end

end
