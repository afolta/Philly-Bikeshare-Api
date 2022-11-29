# frozen_string_literal: true

class StationsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @stations = Station.all
    render template: "/stations/index"
  end

  def show
    trip = Station.find(params[:id])
    render json: trip
  end

  def json_method
    @stations = Station.all
    render json: @stations
  end
end
