# frozen_string_literal: true

class TripsController < JSONAPI::ResourceController
  # By default Rails enables an authenticity token feature that prevents Cross-Site Request Forgery attacks. This works when you use Rails to render forms on the server, but for APIs it won’t work, so we need to turn it off.
  skip_before_action :verify_authenticity_token

  def index
    render json: Trip.all
  end
end
