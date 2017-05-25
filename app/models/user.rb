class User < ApplicationRecord
  has_secure_password
  
  has_many :carted_products
  has_many :orders
  has_many :products, through: :carted_products

  def cart
    carted_products.where(status: "carted")
  end
end
