class AddTokenToOrder < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :token, :text
  end
end
