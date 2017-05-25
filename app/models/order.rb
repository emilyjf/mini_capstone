class Order < ApplicationRecord
  belongs_to :candy, optional: true
  belongs_to :user
  
  has_many :carted_products
  has_many :candies, through: :carted_products

  def calculate_subtotal
    self.subtotal = candy.price * quantity
  end

  def calculate_tax
    self.tax = subtotal * 0.09
  end

  def total
    self.total = subtotal + tax
  end
end

