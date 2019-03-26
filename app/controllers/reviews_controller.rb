class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    review = Review.create(review_params)
    restaurant = Restaurant.find(params[:review][:restaurant_id])
    if review.valid?
      redirect_to restaurant_path(restaurant)
    else
      flash[:message] = review.errors.full_messages
      redirect_to restaurant_path(restaurant)
    end
  end

  def update
  end

  def delete
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :user_id, :restaurant_id)
  end

end
