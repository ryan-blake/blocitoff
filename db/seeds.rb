include RandomData

#Creates Users
5.times do
  user = User.new(
  # #3
  email:    RandomData.random_email,
  password: RandomData.p
  )
  user.skip_confirmation!
  user.save!
end
users = User.all


# Creates i
20.times do
  Item.create!(
    name:   RandomData.random_name,
    user:   users.sample,
    # created_at: "2015-12-10 20:24:01"
  )
end
items = Item.all


puts "Seed finished"
puts "#{Item.count}  items created"
puts "#{User.count}  user created"
