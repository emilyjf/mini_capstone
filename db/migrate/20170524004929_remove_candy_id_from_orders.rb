class RemoveCandyIdFromOrders < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :candy_id, :integer
  end
end
