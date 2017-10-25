class Product < ApplicationRecord
  belongs_to :customer
  has_many :order_products
  has_many :orders, through: :order_products
end
