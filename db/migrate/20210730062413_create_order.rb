class CreateOrder < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.boolean :confirm, :default => nil

      t.timestamps
    end
  end
end
