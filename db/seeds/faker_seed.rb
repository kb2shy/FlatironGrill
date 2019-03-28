30.times do
  User.create(
    name: Faker::Name.name,
    user_name: Faker::Name.first_name,
    password: Faker::Alphanumeric.alphanumeric(10)
  )
end


300.times do
  Review.create(
    user_id: rand(1..User.all.count-1),
    restaurant_id: rand(1..200),
    content: Faker::Restaurant.review,
    rating: rand(1..5)
  )
end
