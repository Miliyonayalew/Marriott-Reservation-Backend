class Api::V1::RoomsController < ApplicationController
  before_action :authenticate_user!, only: %i[create update destroy]
  before_action :set_room, only: %i[show update destroy]

  def index
    render json: Room.all
  end

  def show
    render json: @room
  end

  def create
    room = Room.new(room_params)
    if room.save
      render json: {
        status: 201,
        message: 'Room Created Successfully'
      }, status: :created
    else
      render json: room.errors, status: :unprocessable_entity
    end
  end

  def update
    if @room.update(room_params)
      render json: {
        status: 200,
        message: 'Room Updated Successfully'
      }, status: :ok
    else
      render json: @room.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @room.destroy
      render json: {
        status: 200,
        message: 'Room Deleted Successfully'
      }, status: :ok
    else
      render json: @room.errors, status: :unprocessable_entity
    end
  end

  private

  def set_room
    @room = Room.find(params[:id])
  end

  def room_params
    params.require(:room).permit(:name, :room_type, :price, :description, :image)
  end
end
