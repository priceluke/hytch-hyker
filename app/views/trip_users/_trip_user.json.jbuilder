json.extract! trip_user, :id, :TripID, :PassengerID, :message, :created_at, :updated_at
json.url trip_user_url(trip_user, format: :json)
