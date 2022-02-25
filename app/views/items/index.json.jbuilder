json.partial! "shared/pagination", collection: @items
json.items do
  json.array! @items, partial: "items/item", as: :item
end
