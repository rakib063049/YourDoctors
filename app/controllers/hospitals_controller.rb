class HospitalsController < ApplicationController
  before_action :set_hospital, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @hospitals = Hospital.all
    respond_with(@hospitals)
  end

  def show
    respond_with(@hospital)
  end

  def new
    @hospital = Hospital.new
    respond_with(@hospital)
  end

  def edit
  end

  def create
    @hospital = Hospital.new(hospital_params)
    @hospital.save
    respond_with(@hospital)
  end

  def update
    @hospital.update(hospital_params)
    respond_with(@hospital)
  end

  def destroy
    @hospital.destroy
    respond_with(@hospital)
  end

  private
  def set_hospital
    @hospital = Hospital.find(params[:id])
  end

  def hospital_params
    params.require(:hospital).permit(:name, :phone, :email, :address, :city_id, :thana_id, :district_id, :division_id, :cuntry, :hospital_authority_id)
  end
end
