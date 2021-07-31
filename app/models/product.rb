class Product < ApplicationRecord
  has_many :cart_products

  validates :title, presence: true
  validates :image_url, format: { with: /https?:\/\/[\S]+/, message: "is not in the right format" }, presence: true
  validates :price, presence: true
  validates :brand_id, presence: true
end