# frozen_string_literal: true

class StartDateResource < JSONAPI::Resource
  attributes :start_year, :start_month, :start_day, :start_timezone, :start_hour, :start_minute, :start_second

  has_one :trip
end
