require 'swagger_helper'

RSpec.describe 'Log in user', type: :request do
  path '/api/v1/login' do
    post 'Log in User' do
      tags 'Login'
      consumes 'application/json'
      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          email: { type: :string },
          password: { type: :string }
        },
        required: %w[email password]
      }

      response '200', 'Logged in succesfully.' do
        before do
          User.create(name: 'Hans', email: 'hans@gmail.com', password: '123456',
                      password_confirmation: '123456')
        end
        let(:user) { { user: { email: 'hans@gmail.com', password: '123456' } } }
        run_test!
      end

      response '401', 'Invalid Email or password.' do
        let(:user) do
          { user: { name: 'Hans Zizold' } }
        end
        run_test!
      end
    end
  end
end
