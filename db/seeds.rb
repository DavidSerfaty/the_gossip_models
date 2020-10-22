require 'faker'

User.destroy_all

cities = Array.new
users = Array.new

10.times do
  city = City.create(name: Faker::Address.city, zip_code: Faker::Address.postcode)
  cities << city
end
puts "10 Cities créées"

10.times do
  user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentence(word_count: 10), email: Faker::Internet.email, age: Faker::Number.within(range: 18..70), city: cities.sample)
  users << user
end
puts "10 Users créés"
