# frozen_string_literal: true

Rails.application.routes.draw do
  jsonapi_resources :trips
  get '/stations' => 'stations#index'
  get 'stations/:id' => 'stations#show'

  get '/trips/station/:start_station' => 'trips#trips_by_start_station'
  get '/trips/count/:start_station' => 'trips#count'
  get '/trips/count/date/:date' => 'trips#date'
end
