# frozen_string_literal: true

class CreateEndDates < ActiveRecord::Migration[7.0]
  def change
    create_table :end_dates do |t|
      t.integer :end_year
      t.integer :end_month
      t.integer :end_day
      t.string :end_timezone
      t.integer :end_hour
      t.integer :end_minute
      t.integer :end_second
      t.references :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
