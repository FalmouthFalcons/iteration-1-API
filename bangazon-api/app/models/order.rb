class Order < ApplicationRecord
  belongs_to :Customer
  belongs_to :Payment_Type
  has_many :Order_Products
  has_many :Products, through: :Order_Products
end
