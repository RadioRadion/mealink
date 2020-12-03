class Meal < ApplicationRecord
  belongs_to :cooker
  has_many :notes
  has_many :order_items
  has_many :orders, through: :order_items
  has_many :ingredients

  validates :name, presence: true
  validates :price, presence: true
  validates :stock, presence: true
  validates :typology, presence: true, inclusion: { in: ["starter", "main_course", "dessert"] }

  has_one_attached :photo
end
