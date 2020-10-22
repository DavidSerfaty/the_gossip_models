require 'faker'

User.destroy_all

cities = Array.new
users = Array.new
gossips = Array.new

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

20.times do
  gossip = Gossip.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.sentence(word_count: 10), user: users.sample)
  gossips << gossip
end
puts "20 Gossips créés"
