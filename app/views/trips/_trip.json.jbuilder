json.extract! trip, :id, :driver_id, :trip_id, :when, :destination, :source, :petrolcost, :description, :created_at, :updated_at
json.url trip_url(trip, format: :json)
