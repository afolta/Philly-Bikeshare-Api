# frozen_string_literal: true

class Trip < ApplicationRecord
  has_many :trip_dates
  has_many :stations
end
