# frozen_string_literal: true

class Station < ApplicationRecord
  has_many :trips, as: :stationable
  has_many :trip_dates
end
