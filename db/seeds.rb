# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  User.create do |user|
    user.name = Faker::Name.first_name
    user.email = Faker::Internet.email
    user.bio = Faker::FamousLastWords.last_words
    user.gender = Faker::Gender.binary_type
    49.times do
      user.posts.new do |post|
        post.title = Faker::ProgrammingLanguage.name
        post.post_type = Faker::Types.rb_string
        post.content = Faker::FamousLastWords.last_words
      end
      user.videos.new do |video|
        video.title = Faker::ProgrammingLanguage.name
        video.video_type = Faker::Types.rb_string
        video.view_code = Faker::FamousLastWords.last_words
      end
    end
  end
end
