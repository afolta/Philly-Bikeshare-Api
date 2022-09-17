# frozen_string_literal: true

class Station < ApplicationRecord
  has_many :primary_stations, class_name: 'Trip', foreign_key: 'start_station'
  has_many :secondary_stations, class_name: 'Trip', foreign_key: 'end_station'
end
