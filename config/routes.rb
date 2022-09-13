# frozen_string_literal: true

Rails.application.routes.draw do
  jsonapi_resources :trips
  jsonapi_resources :start_dates
  jsonapi_resources :end_dates
end
