module ApplicationHelper

  def is_owner(trip, user)
    if trip.nil?|| user.nil?
      return false
    elsif trip.driver_id == user.email
      return true
    else
      return false
    end
  end

  def is_passenger(trip, user)
    passenger = TripUser.find_by_sql("SELECT * FROM trip_users WHERE trip_users.TripID = " + trip.trip_id.to_s + " AND trip_users.PassengerID = '" + user.email + "'")
    if passenger.size == 0
      return false
    else
      return true
    end
  end

  def get_driver_details (trip)
    return User.find_by_email(trip.driver_id)
  end
end
