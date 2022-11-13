class RenameStationNameColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :stations, :station_name, :name
  end
end
