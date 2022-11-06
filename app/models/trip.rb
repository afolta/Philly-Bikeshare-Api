# frozen_string_literal: true

class Trip < ApplicationRecord
  has_many :trip_dates
  # belongs_to :station
  has_many :stations
  # belongs_to :start_station, class_name: "Station", foreign_key: "station_id"
  # belongs_to :end_station, class_name: "Station", foreign_key: "station_id"
end
