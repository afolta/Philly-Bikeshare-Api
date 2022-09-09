# frozen_string_literal: true

class CreateTrips < ActiveRecord::Migration[7.0]
  def change
    create_table :trips do |t|
      t.integer :trip_id
      t.integer :bike_type
      t.integer :bike_id
      t.integer :duration
      t.integer :start_station
      t.integer :end_station

      t.timestamps
    end
  end
end
