# frozen_string_literal: true

Trip.create([
              {
                trip_id: 27_263,
                bike_type: 1,
                bike_id: 354,
                duration: 5,
                start_station: 4,
                end_station: 9
              },
              {
                trip_id: 27_264,
                bike_type: 2,
                bike_id: 129,
                duration: 10,
                start_station: 8,
                end_station: 12
              }
            ])

StartDate.create([
                   {
                     trip_id: 27_263,
                     start_year: '2022',
                     start_month: 5,
                     start_day: 2,
                     start_timezone: 'UTC',
                     start_hour: 18,
                     start_minute: 52,
                     start_second: 44
                   },
                   {
                     trip_id: 27_264,
                     start_year: '2022',
                     start_month: 6,
                     start_day: 16,
                     start_timezone: 'UTC',
                     start_hour: 19,
                     start_minute: 22,
                     start_second: 51
                   }
                 ])
