# frozen_string_literal: true

a_trip = Trip.create!(
  trip_id: 27_263,
  bike_type: 1,
  bike_id: 354,
  duration: 5,
  start_station: 4,
  end_station: 8,
  start_time: '2022-05-02T18:52:44',
  end_time: '2022-05-02 18:57:48'
)

a_second_trip = Trip.create!(
  trip_id: 27_264,
  bike_type: 2,
  bike_id: 129,
  duration: 10,
  start_station: 8,
  end_station: 4,
  start_time: '2022-06-16 19:22:51',
  end_time: '2022-06-16 19:32:21'
)

a_trip.trip_dates.create!(
  start_year: '2022',
  end_year: '2022',
  start_month: 5,
  end_month: 5,
  start_day: 2,
  end_day: 2,
  timezone: 'UTC',
  start_hour: 18,
  end_hour: 18,
  start_minute: 52,
  end_minute: 57,
  start_second: 44,
  end_second: 48
)

a_second_trip.trip_dates.create!(
  start_year: '2022',
  end_year: '2022',
  start_month: 6,
  end_month: 6,
  end_day: 16,
  start_day: 16,
  timezone: 'UTC',
  start_hour: 19,
  end_hour: 19,
  start_minute: 22,
  end_minute: 32,
  start_second: 51,
  end_second: 21
)

Station.create!(
  station_id: 4,
  station_name: '40th & Spruce',
  day_of_go_live_date: '4/23/2015',
  status: 'Active'
)

Station.create!(
  station_id: 8,
  station_name: '33rd & Market',
  day_of_go_live_date: '4/23/2015',
  status: 'Active'
)
