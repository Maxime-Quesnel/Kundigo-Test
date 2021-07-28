class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :title
      t.integer :price
      t.integer :old_price
      t.text :image_url
      t.integer :quantity
      t.references :brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end
