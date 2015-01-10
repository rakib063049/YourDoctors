class AvailabilitiesController < ApplicationController
  before_action :set_availability, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @availabilities = Availability.all
    respond_with(@availabilities)
  end

  def show
    respond_with(@availability)
  end

  def new
    @availability = Availability.new
    respond_with(@availability)
  end

  def edit
  end

  def create
    @availability = Availability.new(availability_params)
    @availability.save
    respond_with(@availability)
  end

  def update
    @availability.update(availability_params)
    respond_with(@availability)
  end

  def destroy
    @availability.destroy
    respond_with(@availability)
  end

  private
    def set_availability
      @availability = Availability.find(params[:id])
    end

    def availability_params
      params.require(:availability).permit(:hospital_id, :start_at, :end_at, :day_off, :doctor_id)
    end
end
