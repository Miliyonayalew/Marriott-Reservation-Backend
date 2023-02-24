# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#User.create(name: 'Hans')
user1 = User.create(name: 'Hans')
room1 = Room.create(name: 'Room 1', image: 'gegwe', description: 'This is a room', price: 100, room_type: 'King')
Booking.create(user: user1,room: room1,start_date: '2023-02-25', end_date: '2023-02-26')