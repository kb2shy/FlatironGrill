class User < ApplicationRecord
  has_many :favorites
  has_many :restaurants, through: :favorites

  validates :user_name, {presence: true, uniqueness: true}
  
  has_secure_password

end
