json.extract! item, :id, :creator, :item_name, :description, :quantity, :price, :created_at, :updated_at
json.url item_url(item, format: :json)
