class User < ApplicationRecord
  has_many :reviews
  has_many :favorites
  has_many :restaurants, through: :favorites

  validates :user_name, {presence: true, uniqueness: true}
  validates :password, presence: true

  has_secure_password

end
