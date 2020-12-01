class Order < ApplicationRecord
  belongs_to :user
  belongs_to :cooker

  has_many :order_items
  has_many :meals, through: :order_items
end
