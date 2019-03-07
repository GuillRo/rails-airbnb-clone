require "application_system_test_case"

class BookedDaysTest < ApplicationSystemTestCase
  setup do
    @booked_day = booked_days(:one)
  end

  test "visiting the index" do
    visit booked_days_url
    assert_selector "h1", text: "Booked Days"
  end

  test "creating a Booked day" do
    visit booked_days_url
    click_on "New Booked Day"

    fill_in "Name", with: @booked_day.name
    fill_in "Start time", with: @booked_day.start_time
    click_on "Create Booked day"

    assert_text "Booked day was successfully created"
    click_on "Back"
  end

  test "updating a Booked day" do
    visit booked_days_url
    click_on "Edit", match: :first

    fill_in "Name", with: @booked_day.name
    fill_in "Start time", with: @booked_day.start_time
    click_on "Update Booked day"

    assert_text "Booked day was successfully updated"
    click_on "Back"
  end

  test "destroying a Booked day" do
    visit booked_days_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Booked day was successfully destroyed"
  end
end
