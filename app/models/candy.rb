class Candy < ApplicationRecord
  belongs_to :supplier

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
end
