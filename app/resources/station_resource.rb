# frozen_string_literal: true

class StationResource < JSONAPI::Resource
  attributes :station_name

  has_many :start_stations, class_name: 'Trip', foreign_key: 'start_station_id'
  has_many :end_stations, class_name: 'Trip', foreign_key: 'end_station_id'
  has_many :trip_dates
end
