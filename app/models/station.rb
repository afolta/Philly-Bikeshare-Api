# frozen_string_literal: true

class Station < ApplicationRecord
  has_many :trips
  has_many :trip_dates
end
