class Review < ApplicationRecord
  belongs_to :restaurant, foreign_key: "restaurant_id"

  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: { in: 0..5 }
  validates :rating, numericality: { only_integer: true }
end
