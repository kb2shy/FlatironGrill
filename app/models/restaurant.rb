class Restaurant < ApplicationRecord

  has_many :favorites
  has_many :reviews
  has_many :users, through: :favorites
  belongs_to :food_type

  def self.search(search)
    if search
      food_type = FoodType.find_by(name: search)
      if food_type
        self.where(food_type: food_type)
      else
        Restaurant.all
      end
    else
      Restaurant.all
    end
  end

end
