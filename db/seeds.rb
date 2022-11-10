# frozen_string_literal: true

Station.create!(
  station_name: '40th & Spruce',
  day_of_go_live_date: '2015-04-23',
  status: 'Active'
)

Station.create!(
  station_name: '33rd & Market',
  day_of_go_live_date: '2015-04-23',
  status: 'Active'
)

a_trip = Trip.create!(
  bike_type: 1,
  bike_id: 354,
  duration: 5,
  start_station_id: 2,
  end_station_id: 1,
  start_time: '2022-05-02T18:52:44',
  end_time: '2022-05-02 18:57:48'
)

a_second_trip = Trip.create!(
  bike_type: 2,
  bike_id: 129,
  duration: 10,
  start_station_id: 1,
  end_station_id: 2,
  start_time: '2022-06-16 19:22:51',
  end_time: '2022-06-16 19:32:21'
)
