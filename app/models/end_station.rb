# frozen_string_literal: true

class EndStation < ApplicationRecord
  belongs_to :stationable, polymorphic: true
end
