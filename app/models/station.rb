# frozen_string_literal: true

class Station < ApplicationRecord
  has_many :start_stations, class_name: 'Trip', foreign_key: 'start_station_id', primary_key: 'external_station_id'
  has_many :end_stations, class_name: 'Trip', foreign_key: 'end_station_id', primary_key: 'external_station_id'
end
