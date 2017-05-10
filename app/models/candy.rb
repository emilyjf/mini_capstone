class Candy < ApplicationRecord
  def friendly_updated_at
    updated_at.strftime('%b %d, %Y')
  end

  def sale_message
    if price < 2
      puts "Discount item!"
    else
      puts "Everyday value!"
    end
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
