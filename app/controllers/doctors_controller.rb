class DoctorsController < ApplicationController
  # before_action :set_doctor, only: %i[ show update destroy ]

  # GET /doctors
  def index
    @doctors = Doctor.all
    render :index
    # render json: @doctors
  end

  # GET /doctors/1
  def show
    @doctor = Doctor.find(params[:id])
    render :show
  end

  # POST /doctors
  def create
    @doctor = Doctor.create(
      Name: params[:name]
    )
    render json: @doctor

    # if @doctor.save
    #   render json: @doctor, status: :created, location: @doctor
    # else
    #   render json: @doctor.errors, status: :unprocessable_entity
    # end
  end

  # PATCH/PUT /doctors/1
  # def update
  #   if @doctor.update(doctor_params)
  #     render json: @doctor
  #   else
  #     render json: @doctor.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /doctors/1
  # def destroy
  #   @doctor.destroy
  # end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_doctor
  #     @doctor = Doctor.find(params[:id])
  #   end

  #   # Only allow a list of trusted parameters through.
  #   def doctor_params
  #     params.require(:doctor).permit(:Name)
  #   end
end
