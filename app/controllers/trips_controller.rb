# frozen_string_literal: true
# https://guides.rubyonrails.org/active_record_querying.html

class TripsController < JSONAPI::ResourceController
  skip_before_action :verify_authenticity_token

  def index
    render json: Trip.all
  end

  def start_station
    Trip.joins("INNER JOIN stations ON stations.id = trips.start_station_id WHERE stations.name='#{params[:start_station]}'")
  end

  def trips_by_start_station
    render json: start_station
  end

  def trip_calculations
    average_duration = start_station.average(:duration)
    count = start_station.count
    render json: { count: count, average: average_duration }
  end

  def date
    start_date = params[:start_date].to_datetime
    trip = Trip.where(start_time: start_date.all_day)

    render json: trip
  end
end
