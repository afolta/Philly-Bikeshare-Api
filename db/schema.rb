# frozen_string_literal: true

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

ActiveRecord::Schema[7.0].define(version: 20_220_912_223_639) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'end_dates', force: :cascade do |t|
    t.integer 'end_year'
    t.integer 'end_month'
    t.integer 'end_day'
    t.string 'end_timezone'
    t.integer 'end_hour'
    t.integer 'end_minute'
    t.integer 'end_second'
    t.bigint 'trip_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['trip_id'], name: 'index_end_dates_on_trip_id'
  end

  create_table 'start_dates', force: :cascade do |t|
    t.integer 'start_year'
    t.integer 'start_month'
    t.integer 'start_day'
    t.string 'start_timezone'
    t.integer 'start_hour'
    t.integer 'start_minute'
    t.integer 'start_second'
    t.bigint 'trip_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['trip_id'], name: 'index_start_dates_on_trip_id'
  end

  create_table 'trips', force: :cascade do |t|
    t.integer 'trip_id'
    t.integer 'bike_type'
    t.integer 'bike_id'
    t.integer 'duration'
    t.integer 'start_station'
    t.integer 'end_station'
    t.datetime 'start_time'
    t.datetime 'end_time'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  add_foreign_key 'end_dates', 'trips'
  add_foreign_key 'start_dates', 'trips'
end