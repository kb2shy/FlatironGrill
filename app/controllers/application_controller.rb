class ApplicationController < ActionController::Base
  helper_method :logged_in?
  before_action :authenticate_user

  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!session[:user_id]
  end

  def authenticate_user
    if !logged_in?
      flash[:message] = 'You need to be logged in to do that'
      redirect_to login_path
    end
  end

end
