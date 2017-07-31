json.extract! sale, :id, :street, :city, :state, :zip, :date, :time, :description, :created_at, :updated_at
json.url sale_url(sale, format: :json)
