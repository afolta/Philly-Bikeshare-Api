# frozen_string_literal: true

CSV.foreach(Rails.root.join('lib/assets/indego-stations.csv'), headers: true) do |row|

  Station.create!({
    external_station_id: row[0],
    name: row[1],
    day_of_go_live_date: row[2],
    status: row[3],
    latitude: row[4],
    longitude: row[5]
  })
end

BikeType.create!(name: 'standard')
BikeType.create!(name: 'electric')


CSV.foreach(Rails.root.join('lib/assets/indego-trips-2022-q1.csv'), headers: true) do |row|

Trip.create!({
    bike_type_id: 1,
    bike_id: row[10],
    duration: row[1],
    start_station_id: row[4],
    end_station_id: row[7],
    start_time: row[2],
    end_time: row[3]
  })
end
