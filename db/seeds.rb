include RandomData

#Creates Users
5.times do
  user = User.create!(
  # #3
  email:    RandomData.random_email,
  password: RandomData.p
  )
end
@users = User.all


# Creates i
20.times do
  Item.create!(
  name:   RandomData.random_name
  )
end
@items = Item.all


puts "Seed finished"
puts "#{Item.count}  items created"
puts "#{User.count}  user created"
