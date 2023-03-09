require 'swagger_helper'

RSpec.describe 'Display Current User', type: :request do
  path '/api/v1/users' do
    get('Current User') do
      tags 'Display Current Users'
      produces 'application/json'

      response(200, 'successful') do
        before do
          @user = User.create(name: 'Miliyon', email: 'mila@gmail.com', password: '123456',
                              password_confirmation: '123456')
          sign_in @user
        end

        schema type: :object,
               properties: {
                 id: { type: :integer },
                 name: { type: :string },
                 email: { type: :string }
               },
               required: %w[id name email]
        run_test!
      end

      response(401, 'You need to sign in or sign up before continuing.') do
        let(:user) do
          { user: { name: 'Miliyon' } }
        end
        run_test!
      end
    end
  end
end
