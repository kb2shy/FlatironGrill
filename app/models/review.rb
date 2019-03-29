class Review < ApplicationRecord
  
  belongs_to :user
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, {presence: true, numericality: true}

  def self.avg_rating(restaurant)
    reviews = Review.where(restaurant: restaurant)
    arr = reviews.map do |review|
      review.rating
    end
    total = arr.inject{ |sum, el| sum + el }.to_f / arr.size
    total.round(1)
  end

end
