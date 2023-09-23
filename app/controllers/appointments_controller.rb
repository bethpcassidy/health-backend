class AppointmentsController < ApplicationController
  # before_action :set_appointment, only: %i[ show update destroy ]

  # GET /appointments
  def index
    @appointments = Appointment.all

    # render json: @appointments
    render :index
  end

  # GET /appointments/1
  def show
    @appointment = Appointment.find(params[:id])
    render :show
    # render json: @appointment
  end

  # POST /appointments
  def create
    # @appointment = Appointment.new(appointment_params)

    @appointment = Appointment.create(
      headline: params[:headline],
      message: params[:message],
      approved: params[:approved],
      date: params[:date]
    )

    render json: @appointment
    # if @appointment.save
    #   render json: @appointment, status: :created, location: @appointment
    # else
    #   render json: @appointment.errors, status: :unprocessable_entity
    # end
  end

  # PATCH/PUT /appointments/1
  def update
    if @appointment.update(appointment_params)
      render json: @appointment
    else
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /appointments/1
  # def destroy
  #   @appointment.destroy
  # end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_appointment
  #     @appointment = Appointment.find(params[:id])
  #   end

  #   # Only allow a list of trusted parameters through.
  #   def appointment_params
  #     params.require(:appointment).permit(:headline, :message, :approved, :date)
  #   end
end