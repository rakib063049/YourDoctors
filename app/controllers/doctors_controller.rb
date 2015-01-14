class DoctorsController < ApplicationController
  load_and_authorize_resource
  before_action :set_doctor, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @doctors = Doctor.all
    respond_with(@doctors)
  end

  def show
    respond_with(@doctor)
  end

  def new
    @doctor = Doctor.new
    respond_with(@doctor)
  end

  def edit
    @doctor.image = Image.new if @doctor.image.nil?
  end

  def create
    @doctor = Doctor.new(doctor_params)
    @doctor.save!
    respond_with(@doctor)
  end

  def update
    @doctor.update(doctor_params)
    respond_with(@doctor)
  end

  def destroy
    @doctor.destroy
    respond_with(@doctor)
  end

  private
  def set_doctor
    @doctor = Doctor.find(params[:id])
  end

  def doctor_params
    params.require(:doctor).permit(:name, :title, :degrees, :education, :specialist, :age, :email, :phone, :address, :city_id, :thana_id, :district_id, :division_id,
                                   :cuntry, :about_me, :type, :password, :password_confirmation, image_attributes: [:photo])
  end
end
