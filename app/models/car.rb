class Car < ApplicationRecord
  validates :brand, presence: true
  validates :car_type, presence: true
  # validates :year, presence: true
  has_one_attached :photo
end
