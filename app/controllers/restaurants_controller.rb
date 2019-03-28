class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user

  def index
    @restaurants = Restaurant.search(params[:search])
    @user = current_user
    @price_range = [1, 2, 3, 4, 5]
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
    @user = current_user
    @reviews = Review.where(restaurant: @restaurant)

    @favorite = Favorite.find_by(restaurant: @restaurant, user: @user)
    #@favorite_exists = @favorite == [] ? false : true

    @rating = [1, 2, 3, 4, 5]

  end

end
