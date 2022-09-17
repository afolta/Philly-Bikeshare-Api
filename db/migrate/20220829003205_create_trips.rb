# frozen_string_literal: true

class CreateTrips < ActiveRecord::Migration[7.0]
  def change
    create_table :trips do |t|
      t.integer :trip_id, unique: true
      t.integer :bike_type
      t.integer :bike_id
      t.integer :duration
      t.integer :start_station
      t.integer :end_station
      t.datetime :start_time
      t.datetime :end_time
      t.index ['start_station'], name: 'index_payments_on_start_station'
      t.index ['end_station'], name: 'index_payments_on_end_station'

      t.timestamps
    end

    add_foreign_key :trips, column: :start_station, :stations, column: :station_id
    add_foreign_key :trips, column: :end_station, :stations, column: :station_id
  end
end
