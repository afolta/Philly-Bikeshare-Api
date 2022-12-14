# frozen_string_literal: true

class TripDateSerializer < ActiveModel::Serializer
  attributes :start_year, :end_year, :start_month, :end_month, :start_day,
             :end_day, :timezone, :start_hour, :end_hour, :start_minute,
             :end_minute, :start_second, :end_second

  has_one :trip
end
