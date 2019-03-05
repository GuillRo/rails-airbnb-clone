class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
  end

  def new
    @booking = Booking.new
  end

  def create
    @flat = Flat.find(params[:id])
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @booking.status = "Reserved"
    # @booking.flat_id = @flat.id
    @booking.save
    redirect_to flat_path(params[:flat_id])
    # if @booking.save
    #   redirect_to bookings_path
    # else
    #   redirect_to flat_path(params[:flat_id])
    # end
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :date_begin, :date_end)
  end
end
