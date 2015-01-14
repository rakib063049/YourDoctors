class AvailabilitiesController < ApplicationController
  load_and_authorize_resource
  before_action :set_doctor
  before_action :set_availability, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @availabilities = @doctor.availabilities
  end

  def show
    respond_with(@availability)
  end

  def new
    @availability = @doctor.availabilities.build
    respond_with(@availability)
  end

  def edit
  end

  def create
    @availability = @doctor.availabilities.build(availability_params)
    @availability.save
    respond_with([@doctor, @availability])
  end

  def update
    @availability.update(availability_params)
    respond_with([@doctor, @availability])
  end

  def destroy
    @availability.destroy
    respond_with([@doctor, @availability])
  end

  private
  def set_availability
    @availability = Availability.find(params[:id])
  end

  def set_doctor
    @doctor = Doctor.find(params[:doctor_id])
  end


  def availability_params
    params.require(:availability).permit(:hospital_id, :start_at, :end_at, :day_off, :doctor_id)
  end
end
