class TripUser < ApplicationRecord
validate :is_user_real
validate :is_trip_real
#belongs_to :trip
has_one :user

def is_trip_real
  if self.TripID.present? && !Trip.exists?(:trip_id => self.TripID)
    errors.add(:when, ": Trip isn't real!")
  end
end
def is_user_real
  if self.PassengerID.present? && !User.exists?(:email => self.PassengerID)
    errors.add(:when, ": User isn't real!")
  end
end
end
