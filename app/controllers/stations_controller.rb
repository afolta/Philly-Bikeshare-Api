# frozen_string_literal: true

class StationsController < ApplicationController
  skip_before_action :verify_authenticity_token
end
