class Category < ApplicationRecord
  has_many catgeory_candies
  has_many :products, through: :category_candies
end
