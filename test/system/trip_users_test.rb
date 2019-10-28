require "application_system_test_case"

class TripUsersTest < ApplicationSystemTestCase
  setup do
    @trip_user = trip_users(:one)
  end

  test "visiting the index" do
    visit trip_users_url
    assert_selector "h1", text: "Trip Users"
  end

  test "creating a Trip user" do
    visit trip_users_url
    click_on "New Trip User"

    fill_in "Passengerid", with: @trip_user.PassengerID
    fill_in "Tripid", with: @trip_user.TripID
    fill_in "Message", with: @trip_user.message
    click_on "Create Trip user"

    assert_text "Trip user was successfully created"
    click_on "Back"
  end

  test "updating a Trip user" do
    visit trip_users_url
    click_on "Edit", match: :first

    fill_in "Passengerid", with: @trip_user.PassengerID
    fill_in "Tripid", with: @trip_user.TripID
    fill_in "Message", with: @trip_user.message
    click_on "Update Trip user"

    assert_text "Trip user was successfully updated"
    click_on "Back"
  end

  test "destroying a Trip user" do
    visit trip_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trip user was successfully destroyed"
  end
end
