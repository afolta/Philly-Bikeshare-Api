# frozen_string_literal: true

class CreateBikeTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :bike_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
