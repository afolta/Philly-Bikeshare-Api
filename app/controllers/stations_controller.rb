# frozen_string_literal: true

class StationsController < JSONAPI::ResourceController
  skip_before_action :verify_authenticity_token

  def index
    @stations = Station.all
    render template: "/stations/index"
  end

  def show
    trip = Station.find(params[:id])
    render json: trip
  end
end
