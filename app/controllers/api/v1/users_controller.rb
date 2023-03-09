class Api::V1::UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    render json: current_user, status: :ok
  end
end
