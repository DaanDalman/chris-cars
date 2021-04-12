class Car < ApplicationRecord
  validates :brand, presence: true
  validates :car_type, presence: true
  validates :year, presence: true
  validates :price, presence: true
  validates :description, presence: true
  has_one_attached :photo
end
