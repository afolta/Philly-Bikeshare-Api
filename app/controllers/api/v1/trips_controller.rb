class Api::V1::TripsController < ApplicationController
  def index
    trips = Trip.all 
    render json: trips, status: 200
  end

  def show
    trip = Trip.find_by(id: params[:id])
    if trip
      render json: product, status: 200
    else
      render json {error: "Trip not found."}
    end
  end

  private
    def trip_params
      params.require(:trip).permit([
        :bike_type,
        :bike_id,
        :duration,
        :start_date,
        :end_date,
        :start_station,
        :end_station
      ])
end


