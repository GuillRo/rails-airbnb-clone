class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :update, :destroy]

  def index
    @flats = Flat.all
  end

  def show
    @booking = Booking.new

  end

  def create
    @flat = Flat.new(flat_params)
    if flat.save!
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
    params.require(:flat).permit(:address, :price, :description, :nbr_rooms, :nbr_beds, :photo)
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end

end
