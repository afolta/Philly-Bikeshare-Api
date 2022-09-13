# frozen_string_literal: true

class Trip < ApplicationRecord
  has_many :start_dates
  has_many :end_dates
end
