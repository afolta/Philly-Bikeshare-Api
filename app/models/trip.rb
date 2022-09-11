# frozen_string_literal: true

class Trip < ApplicationRecord
  has_many :start_dates
end
