# frozen_string_literal: true

Rails.application.routes.draw do
  jsonapi_resources :trips
  get '/trips/station/:start_station' => 'trips#start_station'
  get '/stations' => 'stations#index'
  get 'stations/:id' => 'stations#show'
end
