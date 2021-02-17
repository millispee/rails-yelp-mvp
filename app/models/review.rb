class Review < ApplicationRecord
  validates :rating, presence: true, inclusion: { in: (0..5)}, numericality: {only_integer: true}
  validates :content, presence: true, length: { minimum: 1 }
  belongs_to :restaurant
end
