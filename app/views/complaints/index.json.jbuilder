json.array!(@complaints) do |complaint|
  json.extract! complaint, :id, :date, :product, :reason, :synopsis, :notes, :store_number, :store_name, :city, :state, :coding_level2, :brand_code, :brand, :ownership_type, :duplicate
  json.url complaint_url(complaint, format: :json)
end
