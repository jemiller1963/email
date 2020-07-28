20.times do |n|
  User.create!(
    name: "User-#{n}",
    username: "username-#{n}",
    email: "#{n}_user@example.com",
    password: 'password',
    password_confirmation: 'password'
  )
end
puts '20 Users have been created'
