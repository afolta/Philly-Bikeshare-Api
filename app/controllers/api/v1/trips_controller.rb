# frozen_string_literal: true

module Api
  module V1
    class TripsController < JSONAPI::ResourceController
      # By default Rails enables an authenticity token feature that prevents Cross-Site Request Forgery attacks. This works when you use Rails to render forms on the server, but for APIs it won’t work, so we need to turn it off.
      skip_before_action :verify_authenticity_token

      def index
        trips = Trip.all
        render json: trips, status: 200
      end

      def show
        trip = Trip.find_by(trip_id: params[:id])
        if trip
          render json: trip, status: 200
        else
          render json: { error: 'Trip not found.' }
        end
      end

      private

      def trip_params
        params.require(:trip).permit(%i[
                                       trip_id
                                       bike_type
                                       bike_id
                                       duration
                                       start_station
                                       end_station
                                     ])
      end
    end
  end
end
