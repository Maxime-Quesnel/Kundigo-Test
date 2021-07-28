class Product < ApplicationRecord

  validates :title, format: { with: /\A[a-zA-Z0-9]*\z/, message: 'must contain only alphanumeric characters' }, presence: true
  validates :image_url, format: { with: /https?:\/\/[\S]+/, message: "is not in the right format" }, presence: true
  validates :price, presence: true
  validates :brand_id, presence: true
end