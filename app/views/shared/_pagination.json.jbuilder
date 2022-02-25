
json.pagination do
  json.current do
    json.page collection.current_page
    json.href items_url(page: collection.current_page, per: collection.limit_value, format: :json)
  end

  if collection.prev_page
    json.previous do
      json.page collection.prev_page
      json.href items_url(page: collection.prev_page, per: collection.limit_value, format: :json)
    end
  end

  if collection.next_page
    json.next do
      json.page collection.next_page
      json.href items_url(page: collection.next_page, per: collection.limit_value, format: :json)
    end
  end

  json.limit           collection.limit_value
  json.total_pages     collection.total_pages
  json.total_count     collection.total_count
end
