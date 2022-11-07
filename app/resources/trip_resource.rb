# frozen_string_literal: true

class TripResource < JSONAPI::Resource
  attributes :bike_type, :bike_id, :duration, :start_station,
             :end_station, :start_time, :end_time

  has_one :trip_date
end
