class RemoveImageUrlFromCandies < ActiveRecord::Migration[5.0]
  def change
    remove_column :candies, :image, :string
  end
end
