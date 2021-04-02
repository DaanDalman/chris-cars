class Car < ApplicationRecord
  validates :brand, presence: true
  validates :car_type, presence: true
  validates :year, presence: true
end
