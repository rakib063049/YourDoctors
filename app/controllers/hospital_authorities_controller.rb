class HospitalAuthoritiesController < ApplicationController
  before_action :set_hospital_authority, only: [:show, :edit, :update, :destroy, :hospitals]

  respond_to :html

  def index
    @hospital_authorities = HospitalAuthority.all
    respond_with(@hospital_authorities)
  end

  def show
    respond_with(@hospital_authority)
  end

  def new
    @hospital_authority = HospitalAuthority.new
    respond_with(@hospital_authority)
  end

  def edit
  end

  def create
    @hospital_authority = HospitalAuthority.new(hospital_authority_params)
    @hospital_authority.save
    respond_with(@hospital_authority)
  end

  def update
    @hospital_authority.update(hospital_authority_params)
    respond_with(@hospital_authority)
  end

  def destroy
    @hospital_authority.destroy
    respond_with(@hospital_authority)
  end

  def hospitals
    @hospitals = @hospital_authority.hospitals
  end

  private
  def set_hospital_authority
    @hospital_authority = HospitalAuthority.find(params[:id])
  end

  def hospital_authority_params
    params.require(:hospital_authority).permit(:name, :email, :phone, :password, :password_confirmation)
  end
end
