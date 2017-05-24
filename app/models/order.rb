class Order < ApplicationRecord
  belongs_to :candy, optional: true
  belongs_to :user, optional: true
  has_many :carted_products


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

