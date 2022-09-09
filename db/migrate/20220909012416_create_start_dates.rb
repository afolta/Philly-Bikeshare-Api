# frozen_string_literal: true

class CreateStartDates < ActiveRecord::Migration[7.0]
  def change
    create_table :start_dates do |t|
      t.integer :start_year
      t.integer :start_month
      t.integer :start_day
      t.string :start_timezone
      t.integer :start_hour
      t.integer :start_minute
      t.integer :start_second
      t.references :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
