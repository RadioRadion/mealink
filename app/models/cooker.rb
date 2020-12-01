class Cooker < ApplicationRecord
  has_many :orders
  has_many :meals
end
