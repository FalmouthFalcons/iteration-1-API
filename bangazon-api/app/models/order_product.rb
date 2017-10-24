class OrderProduct < ApplicationRecord
  belongs_to :Product
  belongs_to :Order
end
