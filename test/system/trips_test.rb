require "application_system_test_case"

class TripsTest < ApplicationSystemTestCase
  setup do
    @trip = trips(:one)
  end

  test "visiting the index" do
    visit trips_url
    assert_selector "h1", text: "Trips"
  end

  test "creating a Trip" do
    visit trips_url
    click_on "New Trip"

    fill_in "Description", with: @trip.description
    fill_in "Destination", with: @trip.destination
    fill_in "Driver", with: @trip.driver_id
    fill_in "Petrolcost", with: @trip.petrolcost
    fill_in "Source", with: @trip.source
    fill_in "Trip", with: @trip.trip_id
    fill_in "When", with: @trip.when
    click_on "Create Trip"

    assert_text "Trip was successfully created"
    click_on "Back"
  end

  test "updating a Trip" do
    visit trips_url
    click_on "Edit", match: :first

    fill_in "Description", with: @trip.description
    fill_in "Destination", with: @trip.destination
    fill_in "Driver", with: @trip.driver_id
    fill_in "Petrolcost", with: @trip.petrolcost
    fill_in "Source", with: @trip.source
    fill_in "Trip", with: @trip.trip_id
    fill_in "When", with: @trip.when
    click_on "Update Trip"

    assert_text "Trip was successfully updated"
    click_on "Back"
  end

  test "destroying a Trip" do
    visit trips_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trip was successfully destroyed"
  end
end
