json.extract! item, :id, :name, :body, :description, :created_at, :updated_at
json.url item_url(item, format: :json)
