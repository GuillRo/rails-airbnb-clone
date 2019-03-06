class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
  end

  def new
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.flat = Flat.find(params[:flat_id])
    @booking.status = "booked"
    @booking.user = current_user
    if @booking.save
      redirect_to flat_path(params[:flat_id])
    else
      redirect_to bookings_error_url
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date_begin, :date_end)
  end
end
