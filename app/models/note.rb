class Note < ApplicationRecord
  belongs_to :meal

  validates :rating, presence: true
end
