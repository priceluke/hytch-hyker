require 'test_helper'

class TripsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trip = trips(:one)
  end

  test "should get index" do
    get trips_url
    assert_response :success
  end

  test "shouldnt get new" do
    get new_trip_url
    assert_response :redirect
  end

  test "shouldnt create trip" do
    assert_no_difference('Trip.count') do
      post trips_url, params: { trip: { description: @trip.description, destination: @trip.destination, driver_id: @trip.driver_id, petrolcost: @trip.petrolcost, source: @trip.source, trip_id: @trip.trip_id, when: @trip.when } }
    end

    assert_response :redirect
  end

  test "shouldnt show trip" do
    get trip_url(@trip)
    assert_response :redirect
  end

  include Devise::Test::IntegrationHelpers

  test "should show trip" do
    sign_in users(:one)

    get trip_url(@trip)
    assert_response :success
  end

  test "should get edit" do
    get edit_trip_url(@trip)
    assert_response :redirect
  end

  test "shouldnt get edit" do
    sign_in users(:one)

    get edit_trip_url(@trip)
    assert_response :success
  end

  test "shouldnt update trip when not logged in" do
    patch trip_url(@trip), params: { trip: { description: @trip.description, destination: @trip.destination, driver_id: @trip.driver_id, petrolcost: @trip.petrolcost, source: @trip.source, trip_id: @trip.trip_id, when: @trip.when } }
    assert_response :redirect
  end

  test "should destroy trip" do
    assert_no_difference('Trip.count', -1) do
      delete trip_url(@trip)
    end

    assert_response :redirect
  end
end
