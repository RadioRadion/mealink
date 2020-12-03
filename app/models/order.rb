class Order < ApplicationRecord
  belongs_to :user
  belongs_to :cooker

  has_many :order_items
  has_many :meals, through: :order_items

  validates :statut, presence: true, inclusion: { in: ["pending", "paid", "done"] }
end
