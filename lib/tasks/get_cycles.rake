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

require 'csv'
require 'pp'
desc "Gets cycles"
task :get_cycles => [:environment] do
  #Cycle.create(flavor_id: Flavor.find(1), quantity: 2)
  pp Cycle.all
end
