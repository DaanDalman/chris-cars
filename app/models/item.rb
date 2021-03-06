class Item < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true
    validates :price, presence: true
    has_one_attached :photo
end
