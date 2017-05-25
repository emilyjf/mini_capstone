class CartedProduct < ApplicationRecord
  belongs_to :user
  belongs_to :candy
  belongs_to :order, optional: true
end
