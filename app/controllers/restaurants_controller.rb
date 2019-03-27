class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user

  def index
    @restaurants = Restaurant.all
    @user = current_user
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
    @user = current_user
    @reviews = Review.where(restaurant: @restaurant)
    @rating = [1, 2, 3, 4, 5]
  end

end
