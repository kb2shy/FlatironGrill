class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user

  def index
    if params[:search]
      search_criteria = params["search"]
      price_criteria = params["restaurant"]["price_range"].reject { |p| p.empty? }
      rating_criteria = params["restaurant"]["rating"]
      if !search_criteria.empty?
        search_results = Restaurant.search(params[:search])
        if price_criteria.empty? && rating_criteria.empty?
          @restaurants = search_results
        else
          restaurants_filter_by_price = Restaurant.apply_price_filter(params[:restaurant], search_results)
          @restaurants = Restaurant.apply_rating_filter(params[:restaurant], restaurants_filter_by_price)
        end
      elsif !price_criteria.empty? || !rating_criteria.empty?
        search_results = Restaurant.all
        restaurants_filter_by_price = Restaurant.apply_price_filter(params[:restaurant], search_results)
        @restaurants = Restaurant.apply_rating_filter(params[:restaurant], restaurants_filter_by_price)
      else
        @restaurants = Restaurant.all
      end
      @message = true
    else
      @restaurants = Restaurant.all
    end
    @user = current_user
    @price_range = [1, 2, 3]
    @rating = [1, 2, 3, 4, 5]
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
    @user = current_user
    @reviews = Review.where(restaurant: @restaurant)
    @favorite = Favorite.find_by(restaurant: @restaurant, user: @user)
    @rating = [1, 2, 3, 4, 5]
  end

end
