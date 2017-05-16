class AddSupplierIdToTable < ActiveRecord::Migration[5.0]
  def change
    add_column :candies, :supplier_id, :integer
  end
end
