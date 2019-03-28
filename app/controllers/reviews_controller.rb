class ReviewsController < ApplicationController
  before_action :set_review, only: [:edit, :update, :destroy]

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

  # def edit
  # end

  def update
    if @review.update(review_params)
      redirect_to user_path(current_user)
    else
      flash[:message] = @review.errors.full_messages
      redirect_to edit_review_path(@review)
    end
  end

  def destroy
    @review.destroy
    redirect_to user_path(current_user)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :user_id, :restaurant_id)
  end

  def set_review
    @review = Review.find(params[:id])
  end

end
