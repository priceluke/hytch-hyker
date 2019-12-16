require 'test_helper'

class TripUserTest < ActiveSupport::TestCase
  setup do
    @trip = trips(:one)
    @trip_user = trip_users(:valid)
  end
  test "valid trip" do
    assert @trip_user.valid?
  end
  test "invalid trip id" do
    @trip_user.TripID = -11
    refute @trip_user.valid?
  end
  test "invalid user id" do
    @trip_user.PassengerID = "nobody"
    refute @trip_user.valid?
  end
end
