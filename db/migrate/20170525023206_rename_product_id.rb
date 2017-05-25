class RenameProductId < ActiveRecord::Migration[5.0]
  def change
    rename_column :carted_products, :product_id, :candy_id
  end
end
