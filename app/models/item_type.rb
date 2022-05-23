class ItemType < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :items, dependent: :destroy
end
