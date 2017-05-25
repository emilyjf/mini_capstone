class Candy < ApplicationRecord
  belongs_to :supplier
  
  has_many :images
  has_many :carted_products
  has_many :orders, through: :carted_products
 
  has_many :category_candies
  has_many :categories, through: :category_candies
  

  def discounted?
    price < 1.50
  end

  def friendly_updated_at
    updated_at.strftime('%b %d, %Y')
  end

  def sale_message
    if discounted?
      "Discount item!"
    else
      "Everyday value!"
    end
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  def first_image_url
    image_collection = images
    if image_collection.length == 0
        "https://img.clipartfest.com/1953bbaa57435d7f4451d8525033f714_-oops-clipart-clipart-oops_476-480.jpeg"
    else
      image_collection.first.url
    end
  end

  def stringify_categories
    categories.map { |category| category.name.titleize }.join(", ")
  end
end
