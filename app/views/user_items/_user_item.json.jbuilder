json.extract! user_item, :user_id, :item_id, :own_count, :willtrade, :want, :hidden
json.url user_item_url(user_item, format: :json)
