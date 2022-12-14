# frozen_string_literal: true

class Trip < ApplicationRecord
  belongs_to :start_station, class_name: 'Station', foreign_key: 'start_station_id', optional: true, primary_key: 'external_station_id'
  belongs_to :end_station, class_name: 'Station', foreign_key: 'end_station_id', optional: true, primary_key: 'external_station_id'
  belongs_to :bike_type
end
