class Car < ApplicationRecord
  validates :brand, presence :true
  validates :type, presence :true
  validates :year, presence :true
end
