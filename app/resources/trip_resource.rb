# frozen_string_literal: true

class TripResource < JSONAPI::Resource
  attributes :bike_type, :bike_id, :duration, :start_station_id,
             :end_station_id, :start_time, :end_time

  belongs_to :start_station, class_name: 'Station', foreign_key: 'start_station_id'
  belongs_to :end_station, class_name: 'Station', foreign_key: 'end_station_id'
end
