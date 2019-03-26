class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
    @user = current_user
    @reviews = Review.where(restaurant: @restaurant)
  end

end
