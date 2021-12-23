# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_21_164755) do

  create_table "houses", force: :cascade do |t|
    t.string "name"
    t.integer "rent"
    t.string "residence"
    t.text "remarks"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "built"
  end

  create_table "near_stations", force: :cascade do |t|
    t.string "station"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "house_id"
    t.string "route_name"
    t.integer "time_on_foot"
    t.index ["house_id"], name: "index_near_stations_on_house_id"
  end

  add_foreign_key "near_stations", "houses"
end
