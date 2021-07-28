class CreateCart < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.boolean :confirm
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
