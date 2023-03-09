require 'swagger_helper'

RSpec.describe 'Room Reservation', type: :request do
  path '/api/v1/users/{user_id}/bookings' do
    get 'Display User Room Reservation' do
      tags 'Room Reservation'
      produces 'application/json'
      parameter name: :user_id, in: :path, type: :integer, description: 'Current User ID'

      response '200', 'Display Reservation Successfully.' do
        before do
          @user = User.create(name: 'Hans', email: 'hans@gmail.com', password: '123456',
                              password_confirmation: '123456')
          sign_in @user
          @room = Room.create(name: 'Deluxe', room_type: 'Single', description: 'A single room', price: 100, image: 'https://cdn.pixabay.com/photo/2016/11/30/08/48/bedroom-1872196__340.jpg')
          start_date = Date.today
          end_date = Date.today + 5
          Booking.create(room_id: @room.id, start_date:, end_date:)
        end

        let(:user_id) { @user.id }
        schema type: :array,
               items: {
                 type: :object,
                 properties: {
                   id: { type: :integer },
                   start_date: { type: :date },
                   end_date: { type: :date },
                   room: { type: :object,
                           properties: {
                             id: { type: :integer },
                             name: { type: :string },
                             room_type: { type: :string },
                             image: { type: :string },
                             price: { type: :integer },
                             description: { type: :string }
                           }, required: %w[id name room_type image price description] }
                 },
                 required: %w[user_id room_id start_date end_date]
               }
        run_test!
      end

      response '401', 'Invalid Record not found' do
        let(:user_id) { 'invalid' }
        run_test!
      end
    end
  end

  path '/api/v1/users/{user_id}/bookings' do
    post 'Create Reservation' do
      tags 'Create Reservation'
      consumes 'application/json'
      parameter name: :user_id, in: :path, type: :integer, description: 'Current User ID'
      parameter name: :booking, in: :body, schema: {
        type: :object,
        properties: {
          user_id: { type: :integer },
          room_id: { type: :integer },
          start_date: { type: :date },
          end_date: { type: :date }
        },
        required: %w[user_id room_id start_date end_date]
      }

      response '201', 'Created Reservation Successfully.' do
        before do
          @user = User.create(name: 'Hans', email: 'hans@gmail.com', password: '123456',
                              password_confirmation: '123456')
          sign_in @user
          @room = Room.create(name: 'Deluxe', room_type: 'Single', description: 'A single room', price: 100, image: 'https://cdn.pixabay.com/photo/2016/11/30/08/48/bedroom-1872196__340.jpg')
          start_date = Date.today
          end_date = Date.today + 5
          Booking.create(room_id: @room.id, start_date:, end_date:)
        end
        let(:user_id) { @user.id }
        start_date = Date.today
        end_date = Date.today + 5
        let(:booking) { { booking: { user_id: @user.id, room_id: @room.id, start_date:, end_date: } } }
        run_test!
      end

      response '401', 'Invalid request' do
        let(:user_id) { 'invalid' }
        let(:booking) do
          { booking: { user_id: 'invalid', room_id: 'invalid', start_date: 'invalid', end_date: 'invalid' } }
        end
        run_test!
      end
    end
  end

  path '/api/v1/users/{user_id}/bookings/{id}' do
    delete 'Delete Room Reservation' do
      tags 'Delete Reservation'
      consumes 'application/json'
      parameter name: :user_id, in: :path, type: :integer, description: 'Current User ID'
      parameter name: :id, in: :path, type: :integer, description: 'Reservation ID'

      response '200', 'Reservation Delete Successfully.' do
        before do
          @user = User.create(name: 'Hans', email: 'hans@gmail.com', password: '123456',
                              password_confirmation: '123456')
          sign_in @user
          @room = Room.create(name: 'Deluxe', room_type: 'Single', description: 'A single room', price: 100, image: 'https://cdn.pixabay.com/photo/2016/11/30/08/48/bedroom-1872196__340.jpg')
          start_date = Date.today
          end_date = Date.today + 5
          @booking = Booking.create(room_id: @room.id, start_date:, end_date:, user_id: @user.id)
        end

        let(:user_id) { @user.id }
        let(:id) { @booking.id }
        run_test!
      end
    end
  end
end
