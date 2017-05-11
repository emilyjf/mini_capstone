class ChangePrice < ActiveRecord::Migration[5.0]
  def change
    change_column :candies, :price, :decimal, precision: 5, scale: 2
  end
end
