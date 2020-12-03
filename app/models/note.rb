class Note < ApplicationRecord
  belongs_to :meal
  belongs_to :user

  validates :rating, presence: true
end
