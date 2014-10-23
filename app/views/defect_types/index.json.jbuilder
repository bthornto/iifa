json.array!(@defect_types) do |defect_type|
  json.extract! defect_type, :id, :name, :sbuxid
  json.url defect_type_url(defect_type, format: :json)
end
