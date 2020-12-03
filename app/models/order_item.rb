class OrderItem < ApplicationRecord
  belongs_to :meal
  belongs_to :order

  validates :number, presence: true
end
