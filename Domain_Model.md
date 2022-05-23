rails g scaffold item creator:string item_name:string description:text quantity:integer price:decimal

rails g scaffold location name

rails g scaffold item_type name

rails g migration AddLocationToItems location:belongs_to

rails g migration AddItemTypeToItems item_type:belongs_to


LOCATION:
  Model:
    class Item < ApplicationRecord
      validates :location_id, presence: true
      belongs_to :location
    end

    class Location < ApplicationRecord
      validates :name, presence: true, uniqueness: true
      has_many :items, dependent: :destroy
    end

  Controller:
    before_action :set_locations
    def set_locations
      @locations = Location.all.order(:name)
    end

  Views:
    Form:
      <%= form.label :location, style: "display: block" %>
      <%= form.select :location_id, options_for_select(@locations.collect { |locale| [locale.name, locale.id]})%>
    
    Show:
      <strong>Location Made:</strong>
      <%= link_to item.location.name, item.location %>

ITEM_TYPE:
  Model:
    class Item < ApplicationRecord
      validates :item_type_id, presence: true
      belongs_to :item_type
    end

  class ItemType < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    has_many :items, dependent: :destroy
  end

  Controller:
    before_action :set_item_types
    def set_item_types
      @item_types = ItemType.all.order(:name)
    end

  Views:
    Form:
      <%= form.label :item_type, style: "display: block" %>
      <%= form.select :item_type_id, options_for_select(@item_types.collect { |i_type| [i_type.name, i_type.id]})%>

    Show:
      <strong>Item Type:</strong>
      <%= link_to item.item_type.name, item.item_type %>