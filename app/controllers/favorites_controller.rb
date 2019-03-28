class FavoritesController < ApplicationController
  # before_action :set_favorite, only: [:create, :destroy]

  def create
    restaurant = Restaurant.find(params[:restaurant])
    Favorite.create(restaurant: restaurant, user: current_user)
    redirect_to restaurant
  end

  def destroy
    favorite = Favorite.find(params[:id])
    restaurant = favorite.restaurant
#    favorite = Favorite.where(restaurant: @restaurant, user: current_user)
    favorite.destroy
    redirect_to restaurant
  end

  private

  # def set_favorite
  #   @favorite = Favorite.find(params[:id])
  # end

end
