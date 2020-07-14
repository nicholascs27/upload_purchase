class Item < ApplicationRecord

  has_many :purchases

  validates :name, :price, presence: true
  validates :price, numericality: true
end
