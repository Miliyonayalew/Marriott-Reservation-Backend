require 'swagger_helper'

RSpec.describe '/api/v1/rooms', type: :request do
  path '/api/v1/rooms' do
    get 'Display Rooms' do
      tags 'Rooms'
      produces 'application/json'

      response '200', 'Rooms displayed' do
        before do
          @user = User.create(name: 'Miliyon', email: 'mila@gmail.com', password: '123456',
                              password_confirmation: '123456')
          sign_in @user

          Room.create(name: 'Deluxe', room_type: 'Single', description: 'A single room', price: 100, image: 'https://cdn.pixabay.com/photo/2016/11/30/08/48/bedroom-1872196__340.jpg')
        end

        schema type: :array,
               properties: {
                 name: { type: :string },
                 image: { type: :string },
                 description: { type: :string },
                 price: { type: :string },
                 room_type: { type: :string }
               },
               required: %w[name image description price room_type]
        run_test!
      end
    end
  end

  path '/api/v1/rooms/{id}' do
    get 'Display Single Room Details' do
      tags 'Display Room Details'
      produces 'application/json'
      parameter name: :id, in: :path, type: :integer

      response '200', 'Room found displayed' do
        before(:each) do
          @user = User.create(name: 'Miliyon', email: 'mila@gmail.com', password: '123456',
                              password_confirmation: '123456')
          sign_in @user
          @room = Room.create(name: 'Deluxe', room_type: 'Single', description: 'A single room', price: 100, image: 'https://cdn.pixabay.com/photo/2016/11/30/08/48/bedroom-1872196__340.jpg')
        end

        schema type: :object,
               properties: {
                 name: { type: :string },
                 image: { type: :string },
                 description: { type: :string },
                 price: { type: :string },
                 room_type: { type: :string }
               },
               required: %w[name image description price room_type]
        let(:id) { @room.id }
        run_test!
      end

    end
  end

  path '/api/v1/rooms' do
    post 'Create a Room' do
      tags 'Create Room'
      consumes 'application/json'
      parameter name: :room, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          image: { type: :string },
          description: { type: :string },
          price: { type: :integer },
          room_type: { type: :string }
        },
        required: %w[name image description price room_type]
      }

      response '201', 'Room Created Successfully' do
        before do
          @user = User.create(name: 'Miliyon', email: 'mila@gmail.com', password: '123456',
                              password_confirmation: '123456')
          sign_in @user

          Room.create(name: 'Deluxe', room_type: 'Single', description: 'A single room', price: 100, image: 'https://cdn.pixabay.com/photo/2016/11/30/08/48/bedroom-1872196__340.jpg')
        end

        let(:room) { { room: { name: 'Deluxe', room_type: 'Single', description: 'A single room', price: 100, image: 'https://cdn.pixabay.com/photo/2016/11/30/08/48/bedroom-1872196__340.jpg' } } }
        run_test!
      end

      response '401', 'invalid request' do
        let(:room) { { room: { name: 'Deluxe' } } }
        run_test!
      end
    end
  end
end
