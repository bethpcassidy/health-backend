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


end
