class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :url
      t.integer :candy_id
      t.string :name

      t.timestamps
    end
  end
end
