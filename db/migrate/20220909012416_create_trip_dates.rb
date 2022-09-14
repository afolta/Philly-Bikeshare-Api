# frozen_string_literal: true

class CreateTripDates < ActiveRecord::Migration[7.0]
  def change
    create_table :trip_dates do |t|
      t.integer :start_year
      t.integer :end_year
      t.integer :start_month
      t.integer :end_month
      t.integer :start_day
      t.integer :end_day
      t.string  :timezone
      t.integer :start_hour
      t.integer :end_hour
      t.integer :start_minute
      t.integer :end_minute
      t.integer :start_second
      t.integer :end_second
      t.references :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
