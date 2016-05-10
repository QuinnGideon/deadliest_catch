# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Boat.delete_all
Job.delete_all

20.times do
	User.create(email: Faker::Internet.email, password: "123456" , password_confirmation: "123456")
end

10.times do
	Boat.create(location: Faker::Address.country, user_id: User.all.sample.id, name: Faker::Company.name, capacity: rand(50..200))
end 

20.times do
	boat = Boat.all.sample
	Job.create(boat_id: boat.id, body: Faker::Lorem.sentence, name: Faker::Company.catch_phrase, cost: rand(1000...5000), origin: Faker::Address.country, destination: Faker::Address.country, containers_reqd: rand(1..boat.capacity))
end