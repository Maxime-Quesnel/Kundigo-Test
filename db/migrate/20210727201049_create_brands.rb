class CreateBrands < ActiveRecord::Migration[6.1]
  def change
    create_table :brands do |t|
      t.string :title
      t.text :description
      t.integer :rating
      t.text :image_url

      t.timestamps
    end
  end
end
