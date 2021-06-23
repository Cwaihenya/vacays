require "application_system_test_case"

class StationsTest < ApplicationSystemTestCase
  setup do
    @station = stations(:one)
  end

  test "visiting the index" do
    visit stations_url
    assert_selector "h1", text: "Stations"
  end

  test "creating a Station" do
    visit stations_url
    click_on "New Station"

    fill_in "How many mins walk", with: @station.how_many_mins_walk
    fill_in "Name of railway line", with: @station.name_of_railway_line
    fill_in "Place", with: @station.place_id
    fill_in "Station name", with: @station.station_name
    click_on "Create Station"

    assert_text "Station was successfully created"
    click_on "Back"
  end

  test "updating a Station" do
    visit stations_url
    click_on "Edit", match: :first

    fill_in "How many mins walk", with: @station.how_many_mins_walk
    fill_in "Name of railway line", with: @station.name_of_railway_line
    fill_in "Place", with: @station.place_id
    fill_in "Station name", with: @station.station_name
    click_on "Update Station"

    assert_text "Station was successfully updated"
    click_on "Back"
  end

  test "destroying a Station" do
    visit stations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Station was successfully destroyed"
  end
end
