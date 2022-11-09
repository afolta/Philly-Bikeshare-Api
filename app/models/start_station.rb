# frozen_string_literal: true

class StartStation < ApplicationRecord
  belongs_to :stationable, polymorphic: true
end
