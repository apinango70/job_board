# Crea 10 usuarios con datos ficticios
10.times do
  User.create(
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    role: "user"
  )
end

puts "Seed data generated successfully!"
