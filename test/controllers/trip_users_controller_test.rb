require 'test_helper'

class TripUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trip_user = trip_users(:one)
    @trip_user2 = trip_users(:two)
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
    assert_difference('TripUser.count') do
      post trip_users_url, params: { trip_user: { PassengerID:  @trip_user.PassengerID, TripID: 1, message: "hello world" } }
    end

    assert_response :redirect
  end

  test "should create trip_user as admin" do
    sign_in users(:one)

    assert_difference('TripUser.count') do
      post trip_users_url, params: { trip_user: { PassengerID: @trip_user.PassengerID, TripID: @trip_user.TripID, message: @trip_user.message } }
    end

    assert_response :redirect
  end

  test "should show trip_user" do
    get trip_user_url(@trip_user)
    assert_response :redirect
  end

  test "should get edit" do
    get edit_trip_user_url(@trip_user)
    assert_response :success
  end

  test "should update trip_user" do
    patch trip_user_url(@trip_user), params: { trip_user: { PassengerID: @trip_user.PassengerID, TripID: @trip_user.TripID, message: @trip_user.message } }
    assert_response :redirect
  end

  test "should destroy trip_user" do
    assert_difference('TripUser.count', -1) do
      delete trip_user_url(@trip_user)
    end

    assert_response :redirect
  end
end
