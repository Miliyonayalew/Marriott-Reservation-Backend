require 'swagger_helper'

RSpec.describe 'Logout User', type: :request do
  path '/api/v1/logout' do
    delete 'Logout User' do
      tags 'Logout'
      consumes 'application/json'
      parameter name: :Authorization, in: :header, type: :string, description: 'Authorization Token'
      response '200', 'Logged out succesfully' do
        before do
          @user = User.create(name: 'Miliyon', email: 'mila@gmail.com', password: '123456',
                              password_confirmation: '123456')
          def encode(payload, exp = 120.minutes.from_now)
            payload[:exp] = exp.to_i
            JWT.encode(payload, Rails.application.secrets.secret_key_base)
          end
          @token = encode({ sub: @user.id, jti: @user.jti, scp: 'user' })
          sign_in @user
        end
        let(:Authorization) { @token }
        run_test!
      end
    end
  end
end
