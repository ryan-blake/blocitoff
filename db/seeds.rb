include RandomData

# Creates Users
# 5.times do
#   user = User.create!(
#   # #3
#   name:     RandomData.random_name,
#   email:    RandomData.random_email,
#   password: RandomData.random_sentence
#   )
# end
# users = User.all


# Creates Posts
5.times do
  Item.create!(
  name:   random_sentence
  )
end
@items = Item.all


puts "Seed finished"
puts "#{Item.count}  items created"
# puts "#{Post.count} posts created"
