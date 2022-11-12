# frozen_string_literal: true
# https://guides.rubyonrails.org/active_record_querying.html

class TripsController < JSONAPI::ResourceController
  skip_before_action :verify_authenticity_token

  def index
    render json: Trip.all
  end

  def start_station
    trip = Trip.joins("INNER JOIN stations ON stations.id = trips.start_station_id WHERE stations.station_name='#{params[:start_station]}'")
    render json: trip
  end
end
