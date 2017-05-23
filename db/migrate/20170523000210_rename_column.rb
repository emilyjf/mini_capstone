class RenameColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :category_candies, :product_id, :candy_id
  end
end
