class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :cooker

  validates :content, presence: true, length: { in: 10..140 }
end
