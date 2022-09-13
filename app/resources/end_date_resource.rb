# frozen_string_literal: true

class EndDateResource < JSONAPI::Resource
  attributes :end_year, :end_month, :end_day, :end_timezone, :end_hour, :end_minute, :end_second

  has_one :trip
  has_one :start_date
end
