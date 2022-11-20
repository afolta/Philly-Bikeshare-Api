# frozen_string_literal: true

class AddExternalStationIdToStations < ActiveRecord::Migration[7.0]
  def change
    add_column :stations, :external_station_id, :integer
  end
end
