class BookedDaysController < ApplicationController
  before_action :set_booked_day, only: [:show, :edit, :update, :destroy]

  # GET /booked_days
  # GET /booked_days.json
  def index
    @booked_days = BookedDay.all
  end

  # GET /booked_days/1
  # GET /booked_days/1.json
  def show
  end

  # GET /booked_days/new
  def new
    @booked_day = BookedDay.new
  end

  # GET /booked_days/1/edit
  def edit
  end

  # POST /booked_days
  # POST /booked_days.json
  def create
    @booked_day = BookedDay.new(booked_day_params)

    respond_to do |format|
      if @booked_day.save
        format.html { redirect_to @booked_day, notice: 'Booked day was successfully created.' }
        format.json { render :show, status: :created, location: @booked_day }
      else
        format.html { render :new }
        format.json { render json: @booked_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /booked_days/1
  # PATCH/PUT /booked_days/1.json
  def update
    respond_to do |format|
      if @booked_day.update(booked_day_params)
        format.html { redirect_to @booked_day, notice: 'Booked day was successfully updated.' }
        format.json { render :show, status: :ok, location: @booked_day }
      else
        format.html { render :edit }
        format.json { render json: @booked_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /booked_days/1
  # DELETE /booked_days/1.json
  def destroy
    @booked_day.destroy
    respond_to do |format|
      format.html { redirect_to booked_days_url, notice: 'Booked day was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booked_day
      @booked_day = BookedDay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booked_day_params
      params.require(:booked_day).permit(:name, :start_time)
    end
end
