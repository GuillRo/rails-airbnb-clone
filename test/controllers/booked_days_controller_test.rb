require 'test_helper'

class BookedDaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @booked_day = booked_days(:one)
  end

  test "should get index" do
    get booked_days_url
    assert_response :success
  end

  test "should get new" do
    get new_booked_day_url
    assert_response :success
  end

  test "should create booked_day" do
    assert_difference('BookedDay.count') do
      post booked_days_url, params: { booked_day: { name: @booked_day.name, start_time: @booked_day.start_time } }
    end

    assert_redirected_to booked_day_url(BookedDay.last)
  end

  test "should show booked_day" do
    get booked_day_url(@booked_day)
    assert_response :success
  end

  test "should get edit" do
    get edit_booked_day_url(@booked_day)
    assert_response :success
  end

  test "should update booked_day" do
    patch booked_day_url(@booked_day), params: { booked_day: { name: @booked_day.name, start_time: @booked_day.start_time } }
    assert_redirected_to booked_day_url(@booked_day)
  end

  test "should destroy booked_day" do
    assert_difference('BookedDay.count', -1) do
      delete booked_day_url(@booked_day)
    end

    assert_redirected_to booked_days_url
  end
end
