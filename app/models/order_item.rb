class OrderItem < ApplicationRecord
  belongs_to :meal
  belongs_to :order
end
