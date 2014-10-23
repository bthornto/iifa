json.array!(@complaints) do |complaint|
  json.extract! complaint, :id, :date, :product, :reason, :synopsis
  json.url complaint_url(complaint, format: :json)
end
