#create_table "cycles", force: true do |t|
#  t.datetime "date"
#  t.integer  "user_id"
#  t.integer  "flavor_id"
#  t.integer  "size_id"
#  t.integer  "quantity"
#  t.integer  "defect_type_id"
#  t.integer  "cavity_number"
#  t.integer  "job_number"
#  t.integer  "shift"
#  t.integer  "location_id"
#  t.datetime "created_at"
#  t.datetime "updated_at"

desc "Gets cycles"
task :get_cycles => [:environment] do
  cycles = Cycle.all
  cycles.each do |cycle|
    pp cycle.defect_types
  end
end
