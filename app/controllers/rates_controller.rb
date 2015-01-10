class RatesController < ApplicationController
  before_action :set_doctor
  before_action :set_rate, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @rates = @doctor.rates
  end

  def show
    respond_with(@rate)
  end

  def new
    @rate = @doctor.rates.build
    respond_with(@rate)
  end

  def edit
  end

  def create
    @rate = @doctor.rates.build(rate_params)
    @rate.save
    respond_with([@doctor, @rate])
  end

  def update
    @rate.update(rate_params)
    respond_with([@doctor, @rate])
  end

  def destroy
    @rate.destroy
    respond_with([@doctor, @rate])
  end

  private
  def set_rate
    @rate = Rate.find(params[:id])
  end

  def set_doctor
    @doctor = Doctor.find(params[:doctor_id])
  end

  def rate_params
    params.require(:rate).permit(:title, :new_patient, :old_patient, :doctor_id)
  end
end
