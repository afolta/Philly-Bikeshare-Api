# frozen_string_literal: true

class CreateStartStations < ActiveRecord::Migration[7.0]
  def change
    create_table :start_stations, &:timestamps
  end
end
