json.extract! item, :name, :body, :tag_list, :created_at, :updated_at
json.url item_url(item, format: :json)
json.images item.images do |img|
  json.extract! img, :name, :status
  json.url img.image_url
end

attr = item.user_data
  if attr
    json.user_data do
    json.user User.current.username
    json.extract! attr, :own_count, :willtrade, :want, :hidden
    json.url user_item_url(attr, format: :json)
  end
end
