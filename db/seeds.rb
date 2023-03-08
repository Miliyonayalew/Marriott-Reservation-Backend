# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.create(name: 'John Doe', email: 'john@gmail.com', password: '123456',
  password_confirmation: '123456')
user2 = User.create(name: 'Jane Doe', email: 'jane@gmail.com', password: '123456',
  password_confirmation: '123456')

room1 = Room.create(
  name: 'Guest Room', 
  image: 'https://cdn.pixabay.com/photo/2014/08/11/21/40/bedroom-416062__340.jpg', 
  description: 'Our guest room is designed to provide you with the ultimate comfort and relaxation during your stay. From the moment you step into our room, you will be greeted with a warm and inviting atmosphere that is sure to make you feel at home.', 
  price: 200, 
  room_type: 'Single')
room2 = Room.create(
  name: 'Deluxe Room', 
  image: 'https://cdn.pixabay.com/photo/2015/04/11/23/25/bed-718311__340.jpg', 
  description: 'Experience the ultimate comfort and luxury in our deluxe room. Equipped with modern amenities, a plush king-size bed, and a stunning city view, our room offers the perfect oasis for relaxation. Our dedicated staff is always available to assist you, and our hotel features a range of facilities for your enjoyment. Book now for an unforgettable stay!', 
  price: 400, 
  room_type: 'Double')

room3 = Room.create(
  name: 'Family Room', 
  image: 'https://cdn.pixabay.com/photo/2017/08/27/10/16/interior-2685521__340.jpg', 
  description: 'Bring your family to stay in our spacious and comfortable family room. With enough space to accommodate up to four guests, our room features a king-size bed and a comfortable sofa bed. Equipped with modern amenities and complimentary toiletries, our room is perfect for a relaxing family vacation. Book now for a memorable family experience!', 
  price: 800, 
  room_type: 'Suite')

Booking.create(user_id: user1.id,room_id: room1.id,start_date: '2023-03-15', end_date: '2023-03-18')
Booking.create(user_id: user2.id,room_id: room1.id,start_date: '2023-03-20', end_date: '2023-03-24')
