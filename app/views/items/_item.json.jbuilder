json.extract! item, :id, :item_name, :item_description, :price, :sale_id, :created_at, :updated_at
json.url item_url(item, format: :json)
