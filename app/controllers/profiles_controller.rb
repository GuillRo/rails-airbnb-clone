class ProfilesController < ApplicationController
  def show
    @reviews = Review.where(user_id: current_user)
    @bookings = Booking.where(user_id: current_user)
    @booked = Booking.where(user_id: current_user).where(status: "booked")
    @past_bookings = Booking.where(user_id: current_user).where(status: "past")
  end
end
