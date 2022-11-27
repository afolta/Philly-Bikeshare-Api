# frozen_string_literal: true

class BikeType < ApplicationRecord
  has_many :trips
end
