# frozen_string_literal: true

Rails.application.routes.draw do
  jsonapi_resources :trips
  jsonapi_resources :start_dates
end
