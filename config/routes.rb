# frozen_string_literal: true

Rails.application.routes.draw do
  jsonapi_resources :trips
  get '/stations' => 'stations#index'
  get 'stations/:id' => 'stations#show'

  get '/trips/station/:start_station' => 'trips#trips_by_start_station'
  get '/trips/calculations/:start_station' => 'trips#trip_calculations'
  get '/trips/date/:date' => 'trips#date'
end
