require 'faker'

User.destroy_all

10.times do
  user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentence(word_count: 10), email: Faker::Internet.email, age: Faker::Number.within(range: 18..70))
end
puts "10 Users créés"
