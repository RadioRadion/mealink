class Cooker < ApplicationRecord
  has_many :orders
  has_many :meals
  has_many :comments
end
