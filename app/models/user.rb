class User < ApplicationRecord

  has_many :reviews
  has_many :favorites
  has_many :restaurants, through: :favorites

  validates :user_name, {presence: true, uniqueness: true}
  validates :name, presence: true
  validates :password, presence: true, on: :create
  validates :password, presence: true, on: :update, if: :password_changed?

  has_secure_password

## Used to check if password is provided when editing user for validation ##
  def password_changed?
    !password.blank?
  end

## Returns array of food types based on favorited restaurants ##
  def user_food_types(user)
    food_type_array = user.restaurants.map do |restaurant|
      restaurant.food_type.name
    end
  end

## Returns hash of food types and instance counts ##
  def food_type_count(array)
    counts = Hash.new(0)
    array.each do |key|
      counts[key] += 1
    end
    counts
  end

## Returns most liked food type or string if no favorites ##
  def favorite_food_type
    food_type_array = user_food_types(self)
    count_hash = food_type_count(food_type_array)
    favorite = count_hash.max_by{|k,v| v}
    if favorite == nil
      return "You don't have a favorite cuisine yet!"
    else
      return "Your favorite cuisine is: #{favorite[0]}"
    end
  end

end
