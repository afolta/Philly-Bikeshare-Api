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
    # trip = Trip.last.start_time.strftime('%d-%m-%y')
    # date_input = Time.parse(params[:date])
    # render json: date_input
    # trip = Trip.where('start_time.strftime('%d-%m-%y') = ?', params[:date])
    # trip = Trip.where('extract(year from start_time) = ?', params[:date])
    # render json: trip
    variable = params[:date].split('-')

    date = Date.new(variable[0].to_i, variable[1].to_i, variable[2].to_i)

    trip = Trip.where(start_time: date.all_day)

    render json: trip
  end
end
