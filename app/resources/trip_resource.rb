class TripResource < JSONAPI::Resource
	attributes :trip_id, :bike_type, :bike_id, :duration, :start_station, :end_station

	has_many :start_dates
end
