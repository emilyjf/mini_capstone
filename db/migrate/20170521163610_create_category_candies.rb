class CreateCategoryCandies < ActiveRecord::Migration[5.0]
  def change
    create_table :category_candies do |t|
      t.integer :category_id
      t.integer :product_id

      t.timestamps
    end
  end
end
