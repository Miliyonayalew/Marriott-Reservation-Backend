require 'swagger_helper'

RSpec.describe 'Register User', type: :request do
  path '/api/v1/signup' do
    post 'Sign up User' do
      tags 'Sign Up'
      consumes 'application/json'
      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          email: { type: :string },
          password: { type: :string },
          password_confirmation: { type: :string }
        },
        required: %w[name email password password_confirmation]
      }

      response '200', 'Sign up success' do
        let(:user) do
          { user: { name: 'Hans Zizold', email: 'hans@gmail.com', password: '123456',
                    password_confirmation: '123456' } }
        end
        run_test!
      end

      response '422', 'invalid request' do
        let(:user) do
          { user: { name: 'Hans Zizold' } }
        end
        run_test!
      end
    end
  end
end
