json.array!(@locations) do |location|
  json.extract! location, :id, :name, :sbuxid
  json.url location_url(location, format: :json)
end
