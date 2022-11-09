# frozen_string_literal: true

class CreateEndStations < ActiveRecord::Migration[7.0]
  def change
    create_table :end_stations, &:timestamps
  end
end
