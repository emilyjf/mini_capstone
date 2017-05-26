class CartedProduct < ApplicationRecord
  belongs_to :user
  belongs_to :candy
  belongs_to :order, optional: true

  validates :quantity, presence: true
  validates :quantity, numericality: { minimum: 1 } 

  def subtotal
    candy.price * quantity
  end
end
