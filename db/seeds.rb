include RandomData

#Creates Users
1.times do
  user = User.create!(
  # #3
  email:    "ryan_blake@mac.com",
  password: RandomData.p
  )
end
@users = User.all


# Creates Posts
5.times do
  Item.create!(
  name:   random_sentence
  )
end
@items = Item.all


puts "Seed finished"
puts "#{Item.count}  items created"
puts "#{User.count}  user created"
