class RatingsController < ApplicationController
  before_action :set_doctor
  before_action :set_rating, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @ratings = @doctor.ratings
  end

  def show
    respond_with(@rating)
  end

  def new
    @rating = @doctor.ratings.build
    respond_with(@rating)
  end

  def edit
  end

  def create
    @rating = @doctor.ratings.build(rating_params)
    @rating.save
    respond_with([@doctor, @rating])
  end

  def update
    @rating.update(rating_params)
    respond_with([@doctor, @rating])
  end

  def destroy
    @rating.destroy
    respond_with([@doctor, @rating])
  end

  private
  def set_rating
    @rating = Rating.find(params[:id])
  end

  def set_doctor
    @doctor = Doctor.find(params[:doctor_id])
  end

  def rating_params
    params.require(:rating).permit(:doctor_id, :patient_id, :number, :comments)
  end
end
