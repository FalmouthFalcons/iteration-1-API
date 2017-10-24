class Product < ApplicationRecord
  belongs_to :Customer
  has_many :Order_Products
  has_many :Orders, through: :Order_Products
end
