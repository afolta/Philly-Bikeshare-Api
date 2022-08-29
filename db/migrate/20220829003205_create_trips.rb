class CreateTrips < ActiveRecord::Migration[7.0]
  def change
    create_table :trips do |t|
      t.integer :bike_type
      t.integer :bike_id
      t.integer :duration
      t.timestamp :start_date
      t.timestamp :end_date
      t.integer :start_station
      t.integer :end_station

      t.timestamps
    end
  end
end
