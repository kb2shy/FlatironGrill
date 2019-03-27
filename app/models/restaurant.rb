class Restaurant < ApplicationRecord

  has_many :favorites
  has_many :reviews
  has_many :users, through: :favorites
  belongs_to :food_type

end
