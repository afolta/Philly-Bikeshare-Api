# frozen_string_literal: true

class TripSerializer < ActiveModel::Serializer
  attributes :trip_id, :bike_type, :bike_id, :duration, :start_station, :end_station

  has_many :start_dates
  has_many :end_dates
end
