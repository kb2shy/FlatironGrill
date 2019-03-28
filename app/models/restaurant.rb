class Restaurant < ApplicationRecord

  has_many :favorites
  has_many :reviews
  has_many :users, through: :favorites
  belongs_to :food_type

  def self.search(search)
    if search
       food_type = FoodType.where("LOWER(name) LIKE ?", "%#{search.downcase}%")
      if food_type
        self.where(food_type: food_type)
      else
        Restaurant.all
      end
    else
      Restaurant.all
    end
  end

  def self.apply_price_filter(params, array)
    criteria = params["price_range"].reject { |p| p.empty? }
    final_result = []
    if !criteria.empty?
      criteria.each do |price_range|
        result = array.where("price_range = ?", price_range.to_i)
        final_result.push(result).flatten!
      end
      final_result
    else
      array
    end
  end

  def self.apply_rating_filter(params, array)
    criteria = params["rating"]
    final_result = []
    reviews = Hash.new(0)
    array.each do |restaurant|
      reviews[restaurant] = Review.avg_rating(restaurant)
    end
    filtered = reviews.select{ |k,v| v >= criteria[0].to_i}
    filtered_array = []
    filtered.each do |restaurant, rating|
      filtered_array << restaurant
    end
    filtered_array
  end

end
