class Order < ApplicationRecord
  belongs_to :Customer
  belongs_to :Payment_Type
end
