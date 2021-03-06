class Brand < ApplicationRecord
  has_many :products

  validates :title, format: { with: /\A[a-zA-Z0-9]*\z/, message: 'must contain only alphanumeric characters' }, presence: true
  validates :image_url, format: { with: /https?:\/\/[\S]+/, message: "is not in the right format" }, presence: true
  validates :description, presence: true
end