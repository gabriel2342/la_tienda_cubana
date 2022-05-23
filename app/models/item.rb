class Item < ApplicationRecord
  validates :item_type_id, presence: true
  belongs_to :item_type

  validates :location_id, presence: true
  belongs_to :location
end
