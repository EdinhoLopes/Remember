# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Foi usado a gem faker

10.times do |i|
	friend_name = Faker::Name.name
	friend_address = Faker::Address.street_address
	friend_email = Faker::Internet.email
	friend_phone = Faker::PhoneNumber.cell_phone
	Friend.create(name: friend_name, address: friend_address, email: friend_email, phone: friend_phone)
end