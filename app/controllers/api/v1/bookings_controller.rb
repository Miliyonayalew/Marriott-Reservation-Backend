class Api::V1::BookingsController < ApplicationController
  before_action :authenticate_user!, only: %i[create update destroy]

  def index
    render json: current_user.bookings.all
  end

  def create
    @booking = Booking.new(book_params)
    if @booking.save
      render json: {
        status: 201,
        message: 'Room Booked Successfully'
      }, status: :created
    else
      render json: @booking.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = current_user.bookings.find(params[:id])
    if @booking.destroy
      render json: {
        status: 200,
        message: 'Booking Deleted Successfully'
      }, status: :ok
    else
      render json: @booking.errors, status: :unprocessable_entity
    end
  end

  private

  def book_params
    params.require(:booking).permit(:start_date, :end_date, :room_id).with_defaults(user_id: current_user.id)
  end
end
