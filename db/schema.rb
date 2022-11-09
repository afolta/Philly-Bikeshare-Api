# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_11_07_215010) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "end_stations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "start_stations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string "station_name"
    t.date "day_of_go_live_date"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trip_dates", force: :cascade do |t|
    t.integer "start_year"
    t.integer "end_year"
    t.integer "start_month"
    t.integer "end_month"
    t.integer "start_day"
    t.integer "end_day"
    t.string "timezone"
    t.integer "start_hour"
    t.integer "end_hour"
    t.integer "start_minute"
    t.integer "end_minute"
    t.integer "start_second"
    t.integer "end_second"
    t.bigint "trip_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trip_id"], name: "index_trip_dates_on_trip_id"
  end

  create_table "trips", force: :cascade do |t|
    t.integer "bike_type"
    t.integer "bike_id"
    t.integer "duration"
    t.integer "start_station"
    t.integer "end_station"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string "stationable_type"
    t.bigint "stationable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["stationable_type", "stationable_id"], name: "index_trips_on_stationable"
  end

  add_foreign_key "trip_dates", "trips"
end
