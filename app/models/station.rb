# frozen_string_literal: true

class Station < ApplicationRecord
  has_many :trips
end
