# Create regular users
user1 = User.create!(email: 'user1@example.com', password: 'password', password_confirmation: 'password')
user2 = User.create!(email: 'user2@example.com', password: 'password', password_confirmation: 'password')

UserDetail.create!(user: user1, phone_number: '1234567890', name: 'User', last_name: 'One')
UserDetail.create!(user: user2, phone_number: '0987654321', name: 'User', last_name: 'Two')

# Create admin users
admin1 = User.create!(email: 'admin1@example.com', password: 'password', password_confirmation: 'password')
admin2 = User.create!(email: 'admin2@example.com', password: 'password', password_confirmation: 'password')

UserDetail.create!(user: admin1, phone_number: '1112223333', name: 'Admin', last_name: 'One', is_admin: true)
UserDetail.create!(user: admin2, phone_number: '4445556666', name: 'Admin', last_name: 'Two', is_admin: true)

puts "Seeded database with users and user details."
