# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141023224228) do

  create_table "complaints", force: true do |t|
    t.datetime "date"
    t.string   "product"
    t.string   "reason"
    t.text     "synopsis"
    t.text     "notes"
    t.integer  "store_number"
    t.string   "store_name"
    t.string   "city"
    t.string   "state"
    t.string   "coding_level2"
    t.string   "brand_code"
    t.string   "brand"
    t.string   "ownership_type"
    t.boolean  "duplicate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cycles", force: true do |t|
    t.datetime "date"
    t.integer  "user_id"
    t.integer  "flavor_id"
    t.integer  "size_id"
    t.integer  "quantity"
    t.integer  "defect_type_id"
    t.integer  "cavity_number"
    t.integer  "job_number"
    t.integer  "shift"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cycles", ["defect_type_id"], name: "index_cycles_on_defect_type_id"
  add_index "cycles", ["flavor_id"], name: "index_cycles_on_flavor_id"
  add_index "cycles", ["location_id"], name: "index_cycles_on_location_id"
  add_index "cycles", ["size_id"], name: "index_cycles_on_size_id"
  add_index "cycles", ["user_id"], name: "index_cycles_on_user_id"

  create_table "defect_types", force: true do |t|
    t.string   "type"
    t.integer  "sbuxid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "flavors", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "productions", force: true do |t|
    t.integer  "month"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sizes", force: true do |t|
    t.integer  "size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "password"
    t.boolean  "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
