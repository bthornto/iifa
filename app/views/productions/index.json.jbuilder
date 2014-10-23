json.array!(@productions) do |production|
  json.extract! production, :id, :month, :quantity
  json.url production_url(production, format: :json)
end
