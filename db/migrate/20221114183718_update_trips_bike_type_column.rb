# frozen_string_literal: true

class UpdateTripsBikeTypeColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :trips, :bike_type, :bike_type_id
  end
end
