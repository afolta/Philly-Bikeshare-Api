# frozen_string_literal: true

# https://guides.rubyonrails.org/active_record_querying.html

class TripsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @trips = Trip.all

    if params[:start_date] && params[:end_date]
      # end_date = params[:end_date].to_datetime
      @trips = Trip.where("start_time >= :start_date AND start_time <= :end_date", {start_date: params[:start_date].to_datetime, end_date: params[:end_date].to_datetime} )
    end

    render template: "/trips/index"
  end

  def start_station
    Trip.joins("INNER JOIN stations ON stations.external_station_id = trips.start_station_id WHERE stations.name='#{params[:start_station]}'")
  end

  def trips_by_start_station
    render json: start_station
  end

  def trip_calculations
    average_duration = start_station.average(:duration).round(2)
    count = start_station.count
    render json: { trip_count: count, average_duration: average_duration }
  end
end
