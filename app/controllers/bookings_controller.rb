class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
  end

  def new
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new
    @message = params[:message]
  end

  def create
    @booking = Booking.new(booking_params)
    if check_available?(Flat.find(params[:flat_id]), @booking)
      @booking.flat = Flat.find(params[:flat_id])
      @booking.status = "booked"
      @booking.user = current_user
      if @booking.save
        redirect_to flat_path(params[:flat_id])
      else
        redirect_to bookings_error_url
      end
    else
        # @message = "booked"
        # redirect_to bookings_error_url, errormessage: "Already booked"
        # redirect_to '/flats/params[:flat_id]/bookings/new?#{@message}'
        redirect_to new_flat_booking_url(message: "Sorry. Booked already.")
    end
  end

  def booked
    @ERRORMESSAGE = params[:message]
  end


  private

  def booking_params
    params.require(:booking).permit(:date_begin, :date_end, :flat_id)
  end

  def check_available?(flat, new_booking)
    @all_bookings = Booking.where(flat_id: flat)
    date_from = new_booking.date_begin
    date_end = new_booking.date_end
    @all_bookings.each do |booking|
      return false if (date_from..date_end).overlaps?(booking.date_begin..booking.date_end)
    end
    return true
  end
end
