# frozen_string_literal: true

class Station < ApplicationRecord
  # has_many :trips
  has_many :trip_dates
  has_many :start_stations, :class_name => "Trip", :foreign_key => "start_station"
  has_many :end_stations, :class_name => "Trip", :foreign_key => "end_station"
end
