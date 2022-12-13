# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.create!(name: 'John Doe',
                     email: 'john@example.com',
                     username: 'john_doe',
                     provider: 'developer',
                     uid: '1234567890')

50.times do
  User.create!(name: Faker::Name.name,
               email: Faker::Internet.email,
               username: Faker::Internet.unique.username,
               provider: 'developer',
               uid: Faker::Number.unique.number(digits: 10))
end

mod1 = Mod.create!(title: 'Mod 1',
                   description: 'This is the first mod.',
                   tags: %w[tag1 tag2],
                   download_url: 'https://youtube.com/watch?v=dQw4w9WgXcQ',
                   user_id: 1)

mod2 = Mod.create!(title: 'Mod 2',
                   description: 'This is the second mod.',
                   tags: %w[tag1 tag3],
                   download_url: 'https://youtube.com/watch?v=dQw4w9WgXcQ',
                   user_id: 1)

50.times do
  Mod.create!(title: Faker::Book.title,
              description: Faker::Lorem.paragraph,
              tags: [Faker::Lorem.word, Faker::Lorem.word, Faker::Lorem.word],
              download_url: 'https://youtube.com/watch?v=dQw4w9WgXcQ',
              user_id: User.order(Arel.sql('RANDOM()')).first.id)
end
