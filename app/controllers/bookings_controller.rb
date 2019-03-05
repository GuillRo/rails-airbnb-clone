class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
  end

  def create
    @booking = Booking.new(booking_params)
    if booking.save!
      redirect_to bookings_path
    else
      redirect_to flat_path(params[:flat_id])
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :date_begin, :date_end)
  end

end
