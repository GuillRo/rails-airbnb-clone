class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :update, :destroy]

  def index
    # CMT - @flats = Flat.all
    @flats = Flat.where.not(latitude: nil, longitude: nil)
    @markers = @flats.map do |flat|
      {
        lng: flat.longitude,
        lat: flat.latitude
      }
    end
  end

  def show
    @flat = Flat.find(params[:id])
    @booking = Booking.new

  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save!
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def new
    @flat = Flat.new
  end

  def update
    @flat.update(flat_params)

    redirect_to task_path(@task)
  end

  def destroy
    @flat.destroy

    redirect_to flats_path
  end

  private

  def flat_params
    params.require(:flat).permit(:title, :address, :price, :description, :nbr_rooms, :nbr_beds, :photo)
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end

end
