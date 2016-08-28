json.array!(@entries) do |entry|
  json.extract! entry, :id, :name, :quantity, :price, :category_id
  json.url entry_url(entry, format: :json)
end
