# frozen_string_literal: true

class CreateStations < ActiveRecord::Migration[7.0]
  def change
    create_table :stations do |t|
      t.integer :station_id, unique: true
      t.string :station_name
      t.string :day_of_go_live_date
      t.string :status

      t.timestamps
    end
  end
end
