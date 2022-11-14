# frozen_string_literal: true

CSV.foreach(Rails.root.join('lib/assets/indego-stations.csv'), headers: true) do |row|

  Station.create!({
    external_station_id: row[0],
    name: row[1],
    day_of_go_live_date: row[2],
    status: row[3]
  })
end

BikeType.create!(name: 'standard')
BikeType.create!(name: 'electric')

Trip.create!(
  bike_type_id: 1,
  bike_id: 354,
  duration: 5,
  start_station_id: 2,
  end_station_id: 1,
  start_time: '2022-05-02T18:52:44',
  end_time: '2022-05-02 18:57:48'
)

Trip.create!(
  bike_type_id: 2,
  bike_id: 129,
  duration: 10,
  start_station_id: 1,
  end_station_id: 2,
  start_time: '2022-06-16 19:22:51',
  end_time: '2022-06-16 19:32:21'
)

# CSV.foreach(Rails.root.join('lib/assets/indego-trips-2022-q1.csv'), headers: true) do |row|

#   Trip.create!({
#     bike_type_id: 'standard',
#     bike_id: row[10],
#     duration: row[1],
#     start_station_id: row[4],
#     end_station_id: row[6],
#     start_time: row[2],
#     end_time: row[3]
#   })
# end
