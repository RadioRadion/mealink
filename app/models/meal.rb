class Meal < ApplicationRecord
  belongs_to :cooker
  has_many :notes
  has_many :order_items
  has_many :orders, through: :order_items
end
