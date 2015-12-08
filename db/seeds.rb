include RandomData

# Creates Users
5.times do
  user = User.create!(
  # #3
  name:     RandomData.random_name,
  email:    RandomData.random_email,
  password: RandomData.random_sentence
  )
end
users = User.all


# Creates Posts
50.times do
  Post.create!(
  user:   users.sample,
  topic:  topics.sample,
  title:  Faker::Lorem.sentence,
  body:   Faker::Lorem.paragraph
  )
end
posts = Post.all


puts "Seed finished"
puts "#{User.count} users created"
puts "#{Post.count} posts created"
