class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @patients = Patient.all
    respond_with(@patients)
  end

  def show
    respond_with(@patient)
  end

  def new
    @patient = Patient.new
    respond_with(@patient)
  end

  def edit
    @patient.image = Image.new if @patient.image.nil?
  end

  def create
    @patient = Patient.new(patient_params)
    @patient.save!
    respond_with(@patient)
  end

  def update
    @patient.update(patient_params)
    respond_with(@patient)
  end

  def destroy
    @patient.destroy
    respond_with(@patient)
  end

  private
  def set_patient
    @patient = Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit(:name, :age, :email, :phone, :address, :city_id, :thana_id, :district_id, :division_id, :cuntry,
                                    :password, :password_confirmation, image_attributes: [:photo])
  end
end
