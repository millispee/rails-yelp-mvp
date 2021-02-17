class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  CATS = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: { in: CATS}
  validates :phone_number, presence: true

  has_many :reviews, dependent: :destroy
end
