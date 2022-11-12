# frozen_string_literal: true

Rails.application.routes.draw do
  jsonapi_resources :trips
  get '/trips/station/:station_name' => 'trips#station'
  get '/stations' => 'stations#index'
  get 'stations/:id' => 'stations#show'
end
