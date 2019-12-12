require 'test_helper'

class TripUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trip_user = trip_users(:one)
  end

  test "shouldnt get index" do
    get trip_users_url
    assert_response :redirect
  end

  include Devise::Test::IntegrationHelpers

  test "should get index if admin" do
    sign_in users(:one)

    get trip_users_url
    assert_response :success
  end


  test "shouldnt get index if normal user" do
    sign_in users(:two)

    get trip_users_url
    assert_response :redirect
  end


  test "should get new" do
    get new_trip_user_url
    assert_response :redirect
  end

  test "shouldnt create trip_user" do
    assert_no_difference('TripUser.count') do
      post trip_users_url, params: { trip_user: { PassengerID: @trip_user.PassengerID, TripID: @trip_user.TripID, message: @trip_user.message } }
    end

    assert_redirected_to root_url
  end

  test "should show trip_user" do
    get trip_user_url(@trip_user)
    assert_response :redirect
  end

  test "should get edit" do
    get edit_trip_user_url(@trip_user)
    assert_response :redirect
  end

  test "should update trip_user" do
    patch trip_user_url(@trip_user), params: { trip_user: { PassengerID: @trip_user.PassengerID, TripID: @trip_user.TripID, message: @trip_user.message } }
    assert_redirected_to root_url
  end

  test "should destroy trip_user" do
    assert_no_difference('TripUser.count', -1) do
      delete trip_user_url(@trip_user)
    end

    assert_redirected_to root_url
  end
end
