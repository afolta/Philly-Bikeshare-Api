# frozen_string_literal: true

class Trip < ApplicationRecord
  has_one :trip_date
  # has_many :stations
  # belongs_to :start_station, :class_name => "Station", :foreign_key => "start_station"
  # belongs_to :end_station, :class_name => "Station", :foreign_key => "end_station"
end
