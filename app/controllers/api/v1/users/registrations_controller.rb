class Api::V1::Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  respond_to :json

  def create
    user = User.new(sign_up_params)

    if user.save
      render json: { user:, message: 'sign up success', is_success: true }, status: :ok
    else
      render json: { message: 'Sign up failed', is_success: false }, status: :unprocessable_entity
    end
  end

  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
