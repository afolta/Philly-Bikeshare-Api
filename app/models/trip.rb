# frozen_string_literal: true

class Trip < ApplicationRecord
  has_many :trip_dates
  has_one :start_station, as: :stationable
  has_one :end_station, as: :stationable
end
