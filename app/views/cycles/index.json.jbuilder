json.array!(@cycles) do |cycle|
  json.extract! cycle, :id, :date, :user_id, :flavor_id, :size_id, :quantity, :defect_type_id, :cavity_number, :job_number, :shift, :location_id
  json.url cycle_url(cycle, format: :json)
end
