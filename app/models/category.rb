class Category < ApplicationRecord
  has_many :category_candies
  has_many :candies, through: :category_candies

  validates :name, uniqueness: true
  
end
